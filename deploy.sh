#!/bin/bash

# Robust deploy script for Pelican site using gh-pages

set -e  # Exit on any error

echo "🌀 Switching to main branch..."
git checkout main

echo "🧹 Cleaning up unnecessary files..."
find . -type d -name "__pycache__" -exec rm -rf {} +

echo "🛠  Building site with Pelican..."
pelican content

echo "📦 Switching to gh-pages branch..."
git checkout gh-pages

echo "♻️  Copying files from output/ to root of gh-pages..."
rsync -av --delete output/ . --exclude '.git' --exclude '__pycache__'

echo "📂 Staging files for commit..."
git add .

echo "✅ Committing changes..."
git commit -m "Deploy latest site updates" || echo "No changes to commit."

echo "🚀 Pushing to GitHub..."
git pull --rebase origin gh-pages
git push origin gh-pages

echo "🔄 Switching back to main branch..."
git checkout main

echo "✅ Deployment complete."
