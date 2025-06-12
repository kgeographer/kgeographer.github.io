#!/bin/bash

# Safer deploy script for Pelican site using gh-pages

set -e  # Exit on any error

TMPDIR=$(mktemp -d)

echo "🌀 Switching to main branch..."
git checkout main

echo "🧹 Cleaning up unnecessary files..."
find . -type d -name '__pycache__' -exec rm -rf {} +

echo "🛠  Building site with Pelican..."
pelican content

echo "📦 Copying output to temp directory..."
cp -r output/* "$TMPDIR"

echo "🔁 Switching to gh-pages branch..."
git checkout gh-pages

echo "♻️  Copying files from temp to root of gh-pages..."
cp -r "$TMPDIR"/* ./

echo "📂 Staging files for commit..."
git add .

echo "✅ Committing changes..."
git commit -m "Deploy latest site updates" || echo "No changes to commit."

echo "🚀 Pushing to GitHub..."
git push origin gh-pages

echo "🔄 Switching back to main branch..."
git checkout main

echo "✅ Deployment complete."
