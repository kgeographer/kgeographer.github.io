#!/bin/sh
# Wipe output/ and do a clean Pelican regenerate. The running `make devserver`
# process only ever adds/updates files in output/ — it never deletes files
# whose source was renamed or removed, so renamed/reordered photos leave stale
# ghost copies behind at their old filename. Run this after a renaming session
# to clear them out. The live devserver keeps running; it'll pick up further
# content/ changes as normal.
cd "$(dirname "$0")"
rm -rf output
~/venvs/kgeographer/bin/pelican content -o output -s pelicanconf.py
