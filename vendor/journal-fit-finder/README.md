# Journal Fit Finder

[![Validate skill](https://github.com/hztopcu/journal-fit-finder/actions/workflows/validate.yml/badge.svg)](https://github.com/hztopcu/journal-fit-finder/actions/workflows/validate.yml)

Journal Fit Finder is a portable agent skill for evidence-backed academic journal matching. It helps researchers analyze a manuscript, abstract, or keyword set and produce a ranked shortlist of suitable journals with fit scores, rejection risks, source-backed evidence, and submission strategy.

## Quick Install

### Codex on Windows

Clone the repository, then run:

```powershell
.\install.ps1
```

This copies the `journal-fit-finder` skill folder into:

```text
%USERPROFILE%\.codex\skills\journal-fit-finder
```

### Codex on macOS / Linux

Clone the repository, then run:

```bash
chmod +x install.sh
./install.sh
```

This copies the `journal-fit-finder` skill folder into:

```text
${CODEX_HOME:-$HOME/.codex}/skills/journal-fit-finder
```

### Claude

Download the release ZIP asset and upload it as a Claude skill. If your Claude workspace expects a fresh archive, zip the `journal-fit-finder` folder and upload that ZIP.

## What It Does

- Analyzes abstracts, keywords, or full manuscripts, including common file inputs such as DOCX/PDF when the host agent can extract them.
- Extracts field, subfield, article type, methods, contribution, target readership, and constraints.
- Searches for journal candidates using current sources when browsing is available.
- Scores journal fit with a transparent rubric.
- Flags missing or unreliable acceptance-rate claims instead of inventing numbers.
- Routes by manuscript language and target publication language, including Turkish/TR Dizin/DergiPark and international Scopus/WoS/SJR paths.
- Reports quartiles only when source, year, database, and category are known; otherwise marks them for verification.
- Checks publisher diversity so recommendations do not collapse into a single publisher ecosystem.
- Checks scope fit, article type fit, recent precedent, APC/indexing constraints, and red flags.
- Recommends abstract, title, and keyword positioning edits before submission.

## Manual Install In Codex

Copy the `journal-fit-finder` skill folder into your Codex skills directory, for example:

```text
~/.codex/skills/journal-fit-finder
```

Then invoke it with:

```text
Use $journal-fit-finder to analyze my manuscript and recommend suitable journals.
```

## Example Prompt

```text
Use $journal-fit-finder. I will paste my full article. Please identify the strongest journal targets, explain fit and rejection risks, and tell me what to change before submission.
```

For a Turkish manuscript:

```text
Use $journal-fit-finder. Bu makaleyi dergi uyumu acisindan analiz et. TR Dizin, DergiPark ve uluslararasi Scopus/WoS rotalarini ayri ayri degerlendir.
```

## Important Limits

This skill provides decision support, not acceptance guarantees. Many journals do not publish acceptance rates; when reliable acceptance-rate data is unavailable, the skill must say so and use qualitative risk signals instead.

Quartiles, indexing, APCs, turnaround times, and journal policies change. Verify final targets from current primary sources before submission.

## License

MIT
