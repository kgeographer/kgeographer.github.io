#!/bin/bash

# Deploy Pelican site to gh-pages
# Usage: ./deploy.sh ["optional commit message"]
# If no message is given, defaults to "Update site content"

set -e

COMMIT_MSG="${1:-Update site content}"
TMPDIR=$(mktemp -d)

echo "🌀 Ensuring we're on main branch..."
git checkout main

echo "📝 Committing any pending changes on main..."
git add -A
git diff --cached --quiet || git commit -m "$COMMIT_MSG"

echo "🧹 Cleaning up unnecessary files..."
find . -type d -name '__pycache__' -exec rm -rf {} +

echo "🛠  Building site with Pelican..."
pelican content

echo "📦 Copying output to temp directory..."
cp -r output/* "$TMPDIR"

echo "🔁 Switching to gh-pages branch..."
git checkout gh-pages

echo "🧹 Cleaning gh-pages working tree..."
find . -maxdepth 1 ! -name '.' ! -name '.git' ! -name '.nojekyll' ! -name 'CNAME' -exec rm -rf {} +

echo "♻️  Copying built site from temp..."
cp -r "$TMPDIR"/* ./

echo "📂 Staging and committing..."
git add -A
git diff --cached --quiet || git commit -m "Deploy: $COMMIT_MSG"

echo "🚀 Pushing to GitHub..."
git push --force origin gh-pages

echo "🔄 Switching back to main..."
git checkout main

echo "✅ Deployment complete. Site will be live at kgeographer.org shortly."
