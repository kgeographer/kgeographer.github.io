#!/bin/bash

# Simple deploy script for Pelican site using gh-pages
if [ ! -f "pelicanconf.py" ]; then
  echo "⚠️  This doesn't look like the root of your _kgeographer Pelican repo. Aborting."
  exit 1
fi

set -e  # Exit on any error

echo "🌀 Switching to main branch..."
git checkout main

echo "🛠  Building site with Pelican..."
pelican content

echo "📦 Switching to gh-pages branch..."
git checkout gh-pages

echo "♻️  Copying files from output/ to root of gh-pages..."
cp -r output/* ./

echo "📂 Staging files for commit..."
git add .

echo "✅ Committing changes..."
git commit -m "Deploy latest site updates" || echo "No changes to commit."

echo "🚀 Pushing to GitHub..."
git push origin gh-pages

echo "🔄 Switching back to main branch..."
git checkout main

echo "✅ Deployment complete."

