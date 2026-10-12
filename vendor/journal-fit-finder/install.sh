#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$repo_root/journal-fit-finder"

if [[ ! -d "$source_dir" ]]; then
  echo "Cannot find skill folder: $source_dir" >&2
  exit 1
fi

codex_home="${CODEX_HOME:-$HOME/.codex}"
skills_dir="$codex_home/skills"
target_dir="$skills_dir/journal-fit-finder"

mkdir -p "$skills_dir"
rm -rf "$target_dir"
cp -R "$source_dir" "$target_dir"

echo "Installed journal-fit-finder to $target_dir"
echo "Restart Codex if the skill list was already loaded."
