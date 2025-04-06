#!/bin/bash
set -e

echo "📦 Switching to main branch..."
git checkout main

echo "📤 Pushing latest changes to main..."
git add .
git commit -m "Update site content"
git push origin main

echo "🌿 Switching to gh-pages branch..."
git checkout gh-pages

echo "🔀 Merging changes from main into gh-pages..."
git merge main

echo "🚀 Pushing to GitHub Pages..."
git push origin gh-pages

echo "🔁 Switching back to main..."
git checkout main

echo "✅ Deploy complete!"


