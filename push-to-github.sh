#!/bin/bash

# Push Privacy Policy to GitHub Pages
# Run this after creating the GitHub repository

echo "🚀 Pushing Privacy Policy to GitHub..."
echo ""

cd "$(dirname "$0")"

# Check if remote already exists
if git remote get-url origin &>/dev/null; then
    echo "✅ Remote already configured"
else
    echo "📡 Adding GitHub remote..."
    git remote add origin https://github.com/anirudh-puvvada/finance-future-privacy.git
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "📋 Next Steps:"
    echo "1. Go to: https://github.com/anirudh-puvvada/finance-future-privacy/settings/pages"
    echo "2. Source: Deploy from a branch"
    echo "3. Branch: main / (root)"
    echo "4. Click 'Save'"
    echo ""
    echo "5. Wait 1-2 minutes, then your privacy policy will be at:"
    echo "   https://anirudh-puvvada.github.io/finance-future-privacy/"
    echo ""
else
    echo ""
    echo "❌ Error pushing to GitHub"
    echo "Make sure you've created the repository at:"
    echo "https://github.com/new"
    echo "Repository name: finance-future-privacy (Public)"
fi







