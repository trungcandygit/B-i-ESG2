from __future__ import annotations

import re
import sys
import zipfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SKILL_DIR = ROOT / "journal-fit-finder"
SKILL_MD = SKILL_DIR / "SKILL.md"


def fail(message: str) -> None:
    print(f"ERROR: {message}", file=sys.stderr)
    raise SystemExit(1)


def require(path: Path) -> None:
    if not path.exists():
        fail(f"Missing required path: {path.relative_to(ROOT)}")


def parse_frontmatter(text: str) -> dict[str, str]:
    if not text.startswith("---\n"):
        fail("SKILL.md must start with YAML frontmatter")

    end = text.find("\n---\n", 4)
    if end == -1:
        fail("SKILL.md frontmatter must be closed with ---")

    frontmatter = text[4:end]
    data: dict[str, str] = {}
    for line in frontmatter.splitlines():
        if not line.strip():
            continue
        if ":" not in line:
            fail(f"Invalid frontmatter line: {line}")
        key, value = line.split(":", 1)
        data[key.strip()] = value.strip()
    return data


def validate_skill() -> None:
    require(SKILL_DIR)
    require(SKILL_MD)
    require(SKILL_DIR / "agents" / "openai.yaml")
    require(SKILL_DIR / "references" / "evaluation-rubric.md")
    require(SKILL_DIR / "references" / "source-policy.md")
    require(SKILL_DIR / "references" / "output-template.md")

    text = SKILL_MD.read_text(encoding="utf-8")
    meta = parse_frontmatter(text)

    if meta.get("name") != "journal-fit-finder":
        fail("SKILL.md frontmatter name must be journal-fit-finder")
    if not meta.get("description") or len(meta["description"]) < 80:
        fail("SKILL.md frontmatter description is missing or too short")

    refs = set(re.findall(r"`(references/[^`]+\.md)`", text))
    for ref in refs:
        require(SKILL_DIR / ref)

    forbidden_skill_docs = ["README.md", "CHANGELOG.md", "INSTALLATION_GUIDE.md"]
    for name in forbidden_skill_docs:
        if (SKILL_DIR / name).exists():
            fail(f"Do not place repo documentation inside the skill folder: {name}")


def validate_zip(zip_path: Path) -> None:
    if not zip_path.exists():
        print(f"Skipping ZIP check; file not found: {zip_path.name}")
        return

    with zipfile.ZipFile(zip_path) as archive:
        names = set(archive.namelist())

    expected = {
        "journal-fit-finder/SKILL.md",
        "journal-fit-finder/agents/openai.yaml",
        "journal-fit-finder/references/evaluation-rubric.md",
        "journal-fit-finder/references/source-policy.md",
        "journal-fit-finder/references/output-template.md",
    }
    missing = sorted(expected - names)
    if missing:
        fail(f"ZIP package is missing required files: {', '.join(missing)}")


def main() -> None:
    validate_skill()
    validate_zip(ROOT.parent / "journal-fit-finder-v0.1.0.zip")
    print("journal-fit-finder validation passed")


if __name__ == "__main__":
    main()
