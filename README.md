<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>OpenScreen Installation and Configuration Guide</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }
    h1, h2, h3, h4, h5, h6 {
      color: #333;
      margin-bottom: 10px;
    }
    ul {
      list-style: disc;
      margin-left: 20px;
    }
    li {
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <h1>OpenScreen Installation and Configuration Guide</h1>
  <h2>Table of Contents</h2>
  <ul>
    <li><a href="#installation">Installation</a></li>
    <li><a href="#configuration">Configuration</a></li>
    <li><a href="#customization">Customization</a></li>
    <li><a href="#troubleshooting">Troubleshooting</a></li>
  </ul>

  <h2 id="installation">Installation</h2>
  <ol>
    <li>Download the OpenScreen release package from the <a href="https://github.com/openscreen/openscreen/releases">GitHub releases page</a>.</li>
    <li>Extract the contents of the package to a folder on your server.</li>
    <li>Add the following line to your <code>server.cfg</code> file: <code>start OpenScreen</code></li>
    <li>Restart your server to load the OpenScreen resource.</li>
  </ol>

  <h2 id="configuration">Configuration</h2>
  <ol>
    <li>Open the <code>config.lua</code> file in the OpenScreen folder.</li>
    <li>Edit the configuration options to customize the loading screen to your liking.</li>
    <ul>
      <li><code>backgroundImage</code>: Set the path to a custom background image.</li>
      <li><code>backgroundVideo</code>: Set the path to a custom background video.</li>
      <li><code>audioFiles</code>: Set the paths to custom audio files.</li>
      <li><code>loadingBarColor</code>: Set the color of the loading progress bar.</li>
      <li><code>loadingBarStyle</code>: Set the style of the loading progress bar.</li>
    </ul>
    <li>Save the changes to the <code>config.lua</code> file.</li>
  </ol>

  <h2 id="customization">Customization</h2>
  <p>To customize the loading screen layout, edit the <code>html/index.html</code> file.</p>
  <ul>
    <li>To add custom images or videos, add them to the <code>html/assets</code> folder or the <code>stream</code> folder (check the README file in the <code>stream</code> folder for more information).</li>
    <li>To add custom audio files, add them to the <code>html/audio</code> folder.</li>
  </ul>

  <h2 id="troubleshooting">Troubleshooting</h2>
  <p>If you encounter any issues with OpenScreen, check the server console for error messages.</p>
  <p>If you need help with customization or troubleshooting, feel free to reach out to us on the FiveM forums or GitHub issues.</p>
  <p>Note: This is my first release, and I'm aware that it may not be perfect. If you encounter any issues or have feedback, please don't hesitate to reach out. I'm committed to supporting OpenScreen and fixing any problems that arise. Your input will help me improve the resource and make it even better for everyone.</p>
</body>
</html>
