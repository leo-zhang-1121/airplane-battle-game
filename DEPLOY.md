# DEPLOYMENT GUIDE

## Quick Deploy to GitHub Pages

### Option 1: Using GitHub Web Interface (Easiest)

1. Go to https://github.com/new
2. Repository name: `airplane-battle`
3. Make it **Public**
4. Click **Create repository**
5. Upload files:
   - Click "uploading an existing file"
   - Drag and drop all files from this folder
   - Click "Commit changes"
6. Enable GitHub Pages:
   - Go to Settings → Pages
   - Source: Deploy from a branch
   - Branch: main / (root)
   - Click Save
7. Wait 2-3 minutes, then visit:
   `https://leo-zhang-1121.github.io/airplane-battle`

### Option 2: Using Git Commands

```bash
# 1. Configure git (if not already done)
git config --global user.email "your@email.com"
git config --global user.name "Your Name"

# 2. Create a Personal Access Token on GitHub:
#    https://github.com/settings/tokens
#    - Click "Generate new token (classic)"
#    - Select "repo" scope
#    - Generate and copy the token

# 3. Push to GitHub
cd airplane-battle
git remote set-url origin https://YOUR_USERNAME:YOUR_TOKEN@github.com/leo-zhang-1121/airplane-battle.git
git push -u origin main

# 4. Enable GitHub Pages in repository settings
```

### Option 3: Using GitHub CLI

```bash
# Install GitHub CLI first: https://cli.github.com/

# Login
git config --global user.email "your@email.com"
git config --global user.name "Your Name"
gh auth login

# Run the deployment script
./deploy.sh
```

## Manual Testing

Before deploying, test locally:

```bash
cd airplane-battle
python3 -m http.server 8080
# Open http://localhost:8080 in browser
```

## Troubleshooting

### "Repository not found"
- Make sure the repository exists on GitHub
- Check your repository name matches exactly

### "Permission denied"
- Ensure you have push access to the repository
- Check your GitHub token has the "repo" scope

### "Page not found" after deployment
- GitHub Pages can take 2-5 minutes to deploy
- Check repository Settings → Pages for the exact URL
- Ensure the repository is public

## Game Features Test Checklist

- [ ] Main menu displays correctly
- [ ] Can create a room with 4-digit code
- [ ] Can select different aircraft types
- [ ] WASD/Arrow keys move the plane
- [ ] Spacebar shoots bullets
- [ ] Power-ups spawn and work correctly
- [ ] Particle effects show on explosions
- [ ] Screen shake on hit
- [ ] Minimap shows player positions
- [ ] Score and leaderboard update
- [ ] Mobile touch controls work
- [ ] Game over screen appears when health reaches 0
- [ ] Can restart the game

## Live URL

Once deployed, your game will be at:
**https://leo-zhang-1121.github.io/airplane-battle**
