"""Build the JF:IP manuscript DOCX files from manuscript/manuscript.md and R outputs.

Every number in the text is a {{key}} placeholder resolved from project_R/outputs/numbers.csv (written by R);
every table cell comes from project_R/outputs/table*_formatted.csv. Unknown placeholders stop the build.

Markup in manuscript.md:
  % comment line (ignored)
  #  Heading 1       ## Heading 2
  $$ equation text | (n)      display equation, number right-aligned
  [[TABLE:n]] [[FIGURE:n]]    exhibit anchors are not placed in text (JF:IP: exhibits after references)
  *italic*  ^superscript^  ~subscript~
  Sections are delimited by lines '@@ name' (title, abstract, keywords, jel, body, references, ia).
"""
import csv, os, re, sys
from docx import Document
from docx.enum.section import WD_SECTION
from docx.enum.table import WD_TABLE_ALIGNMENT
from docx.enum.text import WD_ALIGN_PARAGRAPH, WD_BREAK, WD_TAB_ALIGNMENT
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.shared import Inches, Pt

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
OUTR = os.path.join(ROOT, 'project_R', 'outputs')
MS = os.path.join(ROOT, 'manuscript', 'manuscript.md')
META = os.path.join(ROOT, 'manuscript', 'meta.md')


def load_numbers():
    with open(os.path.join(OUTR, 'numbers.csv'), encoding='utf-8') as f:
        return {r['key']: r['value'] for r in csv.DictReader(f)}


def fill(text, nums):
    def rep(m):
        k = m.group(1)
        if k not in nums:
            sys.exit('Unknown placeholder {{%s}}' % k)
        return nums[k]
    return re.sub(r'\{\{([A-Za-z0-9_]+)\}\}', rep, text)


def parse_sections(path, nums):
    secs, cur = {}, None
    for line in open(path, encoding='utf-8').read().splitlines():
        if line.startswith('%'):
            continue
        if line.startswith('@@ '):
            cur = line[3:].strip(); secs[cur] = []; continue
        if cur is not None:
            secs[cur].append(fill(line, nums))
    return {k: '\n'.join(v).strip() for k, v in secs.items()}


def blocks(text):
    return [b.strip() for b in re.split(r'\n\s*\n', text) if b.strip()]


TOKEN = re.compile(r'(\*[^*]+\*|\^[^^]+\^|~[^~]+~)')


def add_runs(p, text, bold=False, size=None):
    for part in TOKEN.split(text.replace('\n', ' ')):
        if not part:
            continue
        r = p.add_run()
        if part.startswith('*') and part.endswith('*') and len(part) > 2:
            r.text = part[1:-1]; r.italic = True
        elif part.startswith('^') and part.endswith('^') and len(part) > 2:
            r.text = part[1:-1]; r.font.superscript = True
        elif part.startswith('~') and part.endswith('~') and len(part) > 2:
            r.text = part[1:-1]; r.font.subscript = True
        else:
            r.text = part
        r.bold = bold or None
        if size:
            r.font.size = Pt(size)
    return p


def set_spacing(p, line=1.5, after=6, before=0):
    pf = p.paragraph_format
    pf.line_spacing = line; pf.space_after = Pt(after); pf.space_before = Pt(before)


def base_doc():
    d = Document()
    st = d.styles['Normal']; st.font.name = 'Times New Roman'; st.font.size = Pt(12)
    st.element.rPr.rFonts.set(qn('w:eastAsia'), 'Times New Roman')
    for s in d.sections:
        s.left_margin = s.right_margin = Inches(1); s.top_margin = s.bottom_margin = Inches(1.5)
    add_page_numbers(d)
    cp = d.core_properties; cp.author = ''; cp.last_modified_by = ''; cp.title = ''; cp.comments = ''
    return d


def add_page_numbers(d):
    footer = d.sections[0].footer
    p = footer.paragraphs[0]; p.alignment = WD_ALIGN_PARAGRAPH.CENTER
    r = p.add_run()
    for tag, txt in (('begin', None), (None, 'PAGE'), ('end', None)):
        if tag:
            el = OxmlElement('w:fldChar'); el.set(qn('w:fldCharType'), tag); r._r.append(el)
        else:
            el = OxmlElement('w:instrText'); el.set(qn('xml:space'), 'preserve'); el.text = txt; r._r.append(el)


def heading(d, text, level):
    p = d.add_paragraph(); add_runs(p, text, bold=True, size=12 if level == 1 else 12)
    if level == 2:
        for r in p.runs:
            r.italic = True
    set_spacing(p, 1.5, 6, 12 if level == 1 else 6)
    p.paragraph_format.keep_with_next = True
    return p


def body_par(d, text, indent=True):
    p = d.add_paragraph(); add_runs(p, text); set_spacing(p)
    p.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
    if indent:
        p.paragraph_format.first_line_indent = Inches(0.3)
    return p


def equation(d, text):
    eq, num = [s.strip() for s in text[2:].split('|')]
    p = d.add_paragraph(); set_spacing(p, 1.5, 6, 6)
    ts = p.paragraph_format.tab_stops
    ts.add_tab_stop(Inches(3.25), WD_TAB_ALIGNMENT.CENTER); ts.add_tab_stop(Inches(6.5), WD_TAB_ALIGNMENT.RIGHT)
    p.add_run('\t'); add_runs(p, eq); p.add_run('\t' + num)
    return p


def write_body(d, text):
    for b in blocks(text):
        if b.startswith('## '):
            heading(d, b[3:], 2)
        elif b.startswith('# '):
            heading(d, b[2:], 1)
        elif b.startswith('$$'):
            equation(d, b)
        else:
            body_par(d, b)


def page_break(d):
    d.add_paragraph().add_run().add_break(WD_BREAK.PAGE)


def set_cell(cell, text, bold=False, align=None, size=10):
    cell.text = ''
    p = cell.paragraphs[0]; add_runs(p, text, bold=bold, size=size)
    p.paragraph_format.space_after = Pt(0); p.paragraph_format.line_spacing = 1.0
    if align:
        p.alignment = align


def border(cell, sides):
    tcPr = cell._tc.get_or_add_tcPr()
    b = tcPr.find(qn('w:tcBorders'))
    if b is None:
        b = OxmlElement('w:tcBorders'); tcPr.append(b)
    for side in sides:
        e = OxmlElement('w:' + side); e.set(qn('w:val'), 'single'); e.set(qn('w:sz'), '6'); e.set(qn('w:color'), '000000')
        b.append(e)


def table_exhibit(d, caption, csvfile, note, source, widths=None, size=9):
    rows = list(csv.reader(open(os.path.join(OUTR, csvfile), encoding='utf-8')))
    p = d.add_paragraph(); add_runs(p, caption.split('|')[0].strip(), bold=True); p.add_run(' ')
    add_runs(p, caption.split('|')[1].strip()); set_spacing(p, 1.0, 6)
    t = d.add_table(rows=len(rows), cols=len(rows[0])); t.alignment = WD_TABLE_ALIGNMENT.CENTER
    for i, row in enumerate(rows):
        for j, v in enumerate(row):
            c = t.cell(i, j)
            set_cell(c, v, bold=(i == 0), align=None if j == 0 else WD_ALIGN_PARAGRAPH.CENTER, size=size)
            if i == 0:
                border(c, ['top', 'bottom'])
            if i == len(rows) - 1:
                border(c, ['bottom'])
    if widths:
        for j, w in enumerate(widths):
            for i in range(len(rows)):
                t.cell(i, j).width = Inches(w)
    for txt in (note, 'Source: ' + source):
        q = d.add_paragraph(); add_runs(q, txt, size=10); set_spacing(q, 1.0, 2)
    page_break(d)


def figure_exhibit(d, caption, png, note, source):
    p = d.add_paragraph(); add_runs(p, caption.split('|')[0].strip(), bold=True); p.add_run(' ')
    add_runs(p, caption.split('|')[1].strip()); set_spacing(p, 1.0, 6)
    d.add_picture(os.path.join(OUTR, 'figures', png), width=Inches(6.3))
    d.paragraphs[-1].alignment = WD_ALIGN_PARAGRAPH.CENTER
    for txt in (note, 'Source: ' + source):
        q = d.add_paragraph(); add_runs(q, txt, size=10); set_spacing(q, 1.0, 2)


def build(anonymized, out, meta, secs, exhibits):
    d = base_doc()
    p = d.add_paragraph(); add_runs(p, secs['title'], bold=True, size=14); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
    set_spacing(p, 1.5, 12)
    if not anonymized:
        for line in blocks(meta['authors']):
            q = d.add_paragraph(); add_runs(q, line); q.alignment = WD_ALIGN_PARAGRAPH.CENTER; set_spacing(q, 1.0, 4)
    q = d.add_paragraph(); add_runs(q, 'Running title: ' + secs['running_title']); set_spacing(q, 1.0, 12)
    q.alignment = WD_ALIGN_PARAGRAPH.CENTER
    heading(d, 'Abstract', 1); body_par(d, secs['abstract'], indent=False)
    q = d.add_paragraph(); add_runs(q, '*Keywords:* ' + secs['keywords']); set_spacing(q)
    q = d.add_paragraph(); add_runs(q, '*JEL classification:* ' + secs['jel']); set_spacing(q)
    if not anonymized:
        for b in blocks(meta['statements']):
            if b.startswith('## '):
                heading(d, b[3:], 2)
            else:
                body_par(d, b, indent=False)
    page_break(d)
    body = secs['body'].replace('[[COMPANION]]', meta['companion_blind' if anonymized else 'companion_named'])
    assert '[[' not in body, 'unresolved anchor in body'
    write_body(d, body)
    heading(d, 'References', 1)
    for b in blocks(secs['references']):
        p = d.add_paragraph(); add_runs(p, b); set_spacing(p, 1.5, 4)
        p.paragraph_format.left_indent = Inches(0.3); p.paragraph_format.first_line_indent = Inches(-0.3)
    page_break(d)
    for ex in exhibits:
        (table_exhibit if ex['kind'] == 'table' else figure_exhibit)(d, **ex['args'])
    d.save(out)


def parse_exhibits(secs):
    exs = []
    for b in blocks(secs['exhibits']):
        kv = dict(line.split(':=', 1) for line in b.splitlines())
        kv = {k.strip(): v.strip() for k, v in kv.items()}
        kind = kv.pop('kind')
        if 'widths' in kv:
            kv['widths'] = [float(x) for x in kv['widths'].split(',')]
        if 'size' in kv:
            kv['size'] = int(kv['size'])
        exs.append({'kind': kind, 'args': kv})
    return exs


if __name__ == '__main__':
    nums = load_numbers()
    secs = parse_sections(MS, nums)
    meta = parse_sections(META, nums)
    exhibits = parse_exhibits(secs)
    outdir = sys.argv[1] if len(sys.argv) > 1 else os.path.join(ROOT, 'manuscript')
    os.makedirs(outdir, exist_ok=True)
    build(False, os.path.join(outdir, 'Manuscript_with_Author_Details.docx'), meta, secs, exhibits)
    build(True, os.path.join(outdir, 'Manuscript_Anonymized.docx'), meta, secs, exhibits)
    print('built', outdir)
