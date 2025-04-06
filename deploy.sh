#!/bin/bash
set -e

# Ask for a commit message
read -p "📝 Enter a commit message: " commit_msg

echo "📦 Switching to main branch..."
git checkout main

echo "📤 Adding and committing changes..."
git add .
git commit -m "$commit_msg"
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



