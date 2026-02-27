#!/bin/bash

# Deployment script for Neon Sky Battle
# This script helps deploy the game to GitHub Pages

echo "🚀 Neon Sky Battle - Deployment Script"
echo "======================================"
echo ""

# Check if git is configured
if ! git config --global user.email > /dev/null 2>&1; then
    echo "⚠️  Git user email not configured"
    echo "Please run: git config --global user.email 'your@email.com'"
    exit 1
fi

if ! git config --global user.name > /dev/null 2>&1; then
    echo "⚠️  Git user name not configured"
    echo "Please run: git config --global user.name 'Your Name'"
    exit 1
fi

# Check if GitHub CLI is available and authenticated
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI found"
    if ! gh auth status &> /dev/null; then
        echo "⚠️  GitHub CLI not authenticated"
        echo "Please run: gh auth login"
        exit 1
    fi
    echo "✅ GitHub CLI authenticated"
else
    echo "⚠️  GitHub CLI not found"
    echo "Please install it: https://cli.github.com/"
    exit 1
fi

# Check if repo exists
REPO_NAME="airplane-battle"
if ! gh repo view "$REPO_NAME" &> /dev/null; then
    echo "📦 Creating GitHub repository: $REPO_NAME"
    gh repo create "$REPO_NAME" --public --source=. --push
else
    echo "📦 Repository exists, pushing changes..."
    git push origin main
fi

# Enable GitHub Pages
echo "🌐 Enabling GitHub Pages..."
gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  /repos/$(gh repo view --json owner,name -q '.owner.login + "/" + .name')/pages \
  -f source='{"branch":"main","path":"/"}' 2>/dev/null || echo "Pages may already be enabled"

echo ""
echo "✅ Deployment complete!"
echo ""
echo "🎮 Your game will be available at:"
echo "   https://$(gh api user -q .login).github.io/$REPO_NAME"
echo ""
echo "⏳ Note: It may take a few minutes for GitHub Pages to deploy."
echo "   Check the status at: https://github.com/$(gh api user -q .login)/$REPO_NAME/actions"
