-- __resources.lua
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

resource_type 'gamemode' {
  name = 'yloading screen'
  version = '1.0'
  description = 'Custom loading screen with animations and interactive elements'
}

resource_type 'client_scripts' {
  'client.lua'
}

resource_type 'ui_pages' {
  'html/index.html',
  'css/style.css',
  'js/script.js'
}

resource_type 'files' {
  'stream/background.png',
  'stream/logo.png',
  'stream/progress_bar.png',
  'stream/progress_bar_fill.png',
  'stream/loader.gif',
  'stream/Orbitron-Bold.ttf',
  'stream/soundtrack.mp3', -- add a soundtrack
  'stream/background_day.png', -- dynamic background
  'stream/background_night.png', -- dynamic background
}

resource_type 'dependencies' {
  'es_extended', -- dependency for player information
  'mysql-async', -- dependency for leaderboard
  'soundlibrary', -- dependency for soundtrack
  'progressbar', -- dependency for progress bar
  'button', -- dependency for interactive element
}