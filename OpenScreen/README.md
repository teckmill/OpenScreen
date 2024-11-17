# OpenScreen - Modern FiveM Loading Screen

A sleek, modern, and customizable loading screen for your FiveM server featuring particle effects, smooth animations, and a professional design.

## Features

- 🎨 Modern Design with Particle Effects
- 🌈 Dynamic Background with Gradient Overlay
- 📱 Fully Responsive Layout
- ⚡ Smooth Loading Bar Animation
- 💫 Floating Particles Animation
- 🎭 Custom Font Integration (Poppins)
- 📝 Customizable Server Information
- 🔄 Loading Progress Indicator
- 💡 Loading Tips System

## Installation

1. Download the resource
2. Place it in your server's `resources/[standalone]` folder
3. Rename the folder to `OpenScreen`
4. Add `ensure OpenScreen` to your server.cfg
5. Restart your server

## Customization

### Changing Server Name and Slogan
Edit `html/index.html`:
```html
<div class="header">
    <h1 class="server-name">Your Server Name</h1>
    <p class="server-slogan">Your Server Slogan</p>
</div>
```

### Modifying Colors
Edit `html/style.css`:
- Main gradient: Find `background: linear-gradient(125deg, #000000, #1a1a1a);`
- Accent color: Search for `rgba(255, 51, 102, ` and replace with your color
- Loading bar: Look for `.progress` class

### Particle Effects
- Adjust number of particles by adding/removing `<div class="particle"></div>` in index.html
- Modify particle animation in style.css under `.particle` class

### Loading Tips
Edit the loading tips array in `html/script.js`

## Performance

The loading screen is optimized for performance with:
- Minimal resource usage
- Efficient CSS animations
- Optimized asset loading
- No external dependencies except Google Fonts

## Support

For support or feature requests:
1. Open an issue on the repository
2. Join our Discord community
3. Check the FiveM forums

## License

This resource is licensed under MIT License. Feel free to modify and share!
