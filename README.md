# Neon Sky Battle

An epic multiplayer airplane battle game with neon aesthetics, built with pure HTML5 Canvas and JavaScript.

## Features

- **Multiplayer System**: 4-digit room codes for easy joining
- **4 Aircraft Types**: Fighter, Tank, Speedster, and Bomber - each with unique stats
- **Power-ups**: Speed boost, Shield, Rapid fire, and Bomb
- **Visual Effects**: Particle explosions, trail effects, screen shake, animated backgrounds
- **Audio**: Shooting sounds, explosion effects, background music
- **Mobile Support**: Touch controls for mobile devices
- **Responsive Design**: Works on desktop and mobile

## How to Play

1. Open the game in your browser
2. Click "Create Room" to generate a 4-digit room code
3. Share the code with friends
4. Friends click "Join Room" and enter the code
5. Select your aircraft type
6. Battle!

### Controls

**Desktop:**
- WASD or Arrow Keys: Move
- Spacebar or Z: Shoot

**Mobile:**
- On-screen touch controls

## Game Mechanics

- **Fighter**: Balanced stats, good for beginners
- **Tank**: High health, slow but powerful
- **Speedster**: Fast and rapid fire, low health
- **Bomber**: Medium stats, explosive potential

### Power-ups

- ⚡ **Speed Boost**: Move faster for 5 seconds
- 🛡️ **Shield**: Invulnerable for 8 seconds
- 🔥 **Rapid Fire**: Shoot faster for 6 seconds
- 💣 **Bomb**: Deals damage to all nearby enemies

## Technical Details

- Pure HTML5 Canvas + JavaScript (no external game engines)
- Simulated multiplayer with polling-based sync
- 60fps smooth animations
- Particle systems for visual effects
- Responsive design for all screen sizes

## Deployment

This game is deployed on GitHub Pages at:
https://leo-zhang-1121.github.io/airplane-battle

## Local Development

To run locally:

```bash
# Clone the repository
git clone https://github.com/leo-zhang-1121/airplane-battle.git

# Navigate to the directory
cd airplane-battle

# Open in browser (or use a local server)
open index.html
```

Or use a simple Python server:
```bash
python3 -m http.server 8000
```
Then open http://localhost:8000

## License

MIT License - Feel free to use and modify!
