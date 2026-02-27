# Neon Sky Battle

An epic multiplayer airplane battle game with stunning neon aesthetics, built with pure HTML5 Canvas and JavaScript.

![Game Screenshot](screenshot.png)

## 🎮 Play Now

**Live Game:** https://leo-zhang-1121.github.io/airplane-battle

## ✨ Features

### Multiplayer System
- 🔢 **4-digit room codes** - Easy to share and join
- 🌐 **Real-time multiplayer** - WebRTC-like experience with polling
- 👥 **2+ players** - Battle with friends or AI bots

### Aircraft Types
| Type | Speed | Health | Fire Rate | Special |
|------|-------|--------|-----------|---------|
| 🚀 Fighter | ★★★★☆ | ★★★☆☆ | ★★★★☆ | Balanced |
| 🛡️ Tank | ★★☆☆☆ | ★★★★★ | ★★★☆☆ | High durability |
| ⚡ Speedster | ★★★★★ | ★★☆☆☆ | ★★★★★ | Fast & agile |
| 💣 Bomber | ★★★☆☆ | ★★★★☆ | ★★☆☆☆ | Area damage |

### Power-ups
- ⚡ **Speed Boost** - Move 50% faster (5s)
- 🛡️ **Shield** - Invulnerability (8s)
- 🔥 **Rapid Fire** - Double fire rate (6s)
- 💣 **Bomb** - Damage all nearby enemies

### Visual Effects
- 💥 Particle explosions
- ✈️ Aircraft trail effects
- 📳 Screen shake on hit
- ☁️ Animated clouds and stars
- 🌈 Neon glow effects
- 🎯 Smooth 60fps animations

### Audio
- 🔫 Shooting sounds
- 💣 Explosion effects
- 🎵 Background music
- ✨ Power-up sounds

### UI/UX
- 🏠 Main menu with create/join room
- 📊 In-game HUD (health, score, minimap)
- 🏆 Leaderboard
- 📱 Mobile touch controls
- 📐 Responsive design

## 🎯 How to Play

### Desktop Controls
- **WASD** or **Arrow Keys** - Move your aircraft
- **Spacebar** or **Z** - Shoot

### Mobile Controls
- On-screen touch buttons for movement and shooting

### Gameplay Tips
1. Collect power-ups to gain advantages
2. Use the minimap to track enemies
3. Different aircraft suit different playstyles
4. Lead your shots when targeting moving enemies

## 🚀 Quick Start

### Play Online
Simply visit: https://leo-zhang-1121.github.io/airplane-battle

### Play Locally
```bash
# Clone the repository
git clone https://github.com/leo-zhang-1121/airplane-battle.git

# Navigate to the directory
cd airplane-battle

# Start a local server
python3 -m http.server 8080

# Open in browser
open http://localhost:8080
```

## 🛠️ Technical Details

- **Engine**: Pure HTML5 Canvas + JavaScript (no external game engines)
- **Multiplayer**: Simulated with polling-based sync (WebRTC-ready architecture)
- **Rendering**: 60fps with requestAnimationFrame
- **Physics**: Custom collision detection and particle systems
- **Audio**: Web Audio API for sound effects
- **Mobile**: Touch event handling with virtual controls

## 📁 Project Structure

```
airplane-battle/
├── index.html      # Main game file (all-in-one)
├── README.md       # This file
├── package.json    # Project metadata
└── .github/
    └── workflows/
        └── deploy.yml  # GitHub Pages deployment
```

## 🚢 Deployment

The game is automatically deployed to GitHub Pages using GitHub Actions.

### Manual Deployment
1. Fork this repository
2. Go to Settings → Pages
3. Select "Deploy from a branch"
4. Choose "main" branch and "/ (root)" folder
5. Your game will be live at `https://yourusername.github.io/airplane-battle`

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest features
- Submit pull requests

## 📜 License

MIT License - Feel free to use, modify, and distribute!

## 🙏 Credits

Created with ❤️ by Leo Zhang

---

**Enjoy the game! May the best pilot win! 🏆**
