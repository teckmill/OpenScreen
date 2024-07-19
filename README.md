OpenScreen Installation and Configuration Guide

Table of Contents

Installation
Configuration
Customization
Troubleshooting
Installation

Download the OpenScreen release package from the GitHub releases page.
Extract the contents of the package to a folder on your server.
Add the following line to your server.cfg file: start OpenScreen
Restart your server to load the OpenScreen resource.
Configuration

Open the config.lua file in the OpenScreen folder.
Edit the configuration options to customize the loading screen to your liking.
backgroundImage: Set the path to a custom background image.
backgroundVideo: Set the path to a custom background video.
audioFiles: Set the paths to custom audio files.
loadingBarColor: Set the color of the loading progress bar.
loadingBarStyle: Set the style of the loading progress bar.
Save the changes to the config.lua file.
Customization

To customize the loading screen layout, edit the html/index.html file.
*To add custom images or videos, add them to the html/assets folder Or the stream folder check the readme file in the stream folder. - Dont quote me on this and i can help if you have any issues
To add custom audio files, add them to the html/audio folder.
Troubleshooting

If you encounter any issues with OpenScreen, check the server console for error messages.
If you need help with customization or troubleshooting, feel free to reach out to us on the FiveM forums or GitHub issues.
Note: This is my first release, and I'm aware that it may not be perfect. If you encounter any issues or have feedback, please don't hesitate to reach out. I'm committed to supporting OpenScreen and fixing any problems that arise. Your input will help me improve the resource and make it even better for everyone.
