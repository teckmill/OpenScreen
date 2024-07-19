-- __resource.lua
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

resource_type 'gamemode' {
  name = 'yloading screen'
  version = '1.0'
  description = 'Custom loading screen with animations and interactive elements'
}

resource_type 'client_scripts' {
  'client.lua'
}

resource_type 'tream' {
  'tream/background.png',
  'tream/logo.png',
  'tream/progress_bar.png',
  'tream/progress_bar_fill.png',
  'tream/loader.gif',
  'tream/Orbitron-Bold.ttf',
  'tream/soundtrack.mp3' -- add a soundtrack
}

-- client.lua
local loadingScreen = {}
local soundtrack = nil

-- Load soundtrack
AddEventHandler('onClientResourceStart', function(resourceName)
  if resourceName == 'yloading screen' then
    soundtrack = PlaySound('soundtrack.mp3', true)
  end
end)

-- Unload soundtrack
AddEventHandler('onClientResourceStop', function(resourceName)
  if resourceName == 'yloading screen' then
    StopSound(soundtrack)
  end
end)

-- Loading screen animation
local animation = {
  background = 'background.png',
  logo = 'logo.png',
  progressBar = 'progress_bar.png',
  progressBarFill = 'progress_bar_fill.png',
  loader = 'loader.gif'
}

-- Dynamic loading screen
local dynamicBackgrounds = {
  { image = 'background_day.png', time = { 6, 18 } }, -- day time
  { image = 'background_night.png', time = { 18, 6 } } -- night time
}

-- Countdown timer
local countdownTimer = 30 -- 30 seconds

-- Player information
local playerName = GetPlayerName(PlayerId())
local playerPed = GetPlayerPed(PlayerId())

-- Mini-game or interactive element
local interactiveElement = {
  type = 'button',
  text = 'Click to continue',
  x = 0.5,
  y = 0.5,
  width = 200,
  height = 50
}

-- News or announcement system
local newsItems = {
  { text = 'Server update: New vehicles added!' },
  { text = 'Event: Double XP weekend!' },
  { text = 'News: New game mode coming soon!' }
}

-- Leaderboard
local leaderboard = {
  { name = 'Top Players', type = 'level' },
  { name = 'Top Killers', type = 'kills' }
}

-- Create loading screen UI
local loadingScreenUI = {
  background = CreateSprite(animation.background, 0, 0, 1, 1),
  logo = CreateSprite(animation.logo, 0.5, 0.2, 0.2, 0.2),
  progressBar = CreateSprite(animation.progressBar, 0.5, 0.5, 0.5, 0.1),
  progressBarFill = CreateSprite(animation.progressBarFill, 0.5, 0.5, 0.5, 0.1),
  loader = CreateSprite(animation.loader, 0.5, 0.5, 0.1, 0.1),
  countdownTimerText = CreateText('Countdown: '..countdownTimer..' seconds', 0.5, 0.7, 0.5, 0.1),
  playerNameText = CreateText('Player: '..playerName, 0.5, 0.8, 0.5, 0.1),
  interactiveElement = CreateButton(interactiveElement.text, interactiveElement.x, interactiveElement.y, interactiveElement.width, interactiveElement.height),
  newsText = CreateText(newsItems[1].text, 0.5, 0.9, 0.5, 0.1),
  leaderboardText = CreateText(leaderboard[1].name..' - '..leaderboard[1].type, 0.5, 0.95, 0.5, 0.1)
}

-- Update loading screen UI
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    -- Update countdown timer
    countdownTimer = countdownTimer - 1
    if countdownTimer <= 0 then
      -- Trigger event when countdown timer reaches zero
      TriggerEvent('loadingScreen:countdownComplete')
    end
    -- Update player information
    playerName = GetPlayerName(PlayerId())
    playerPed = GetPlayerPed(PlayerId())
    -- Update news or announcement system
    newsItems[1].text = 'Server update: New vehicles added!'
    -- Update leaderboard
    leaderboard[1].name = 'Top Players'
    leaderboard[1].type = 'level'
        -- Update UI elements
        SetSpritePosition(loadingScreenUI.background, 0, 0, 1, 1)
        SetSpritePosition(loadingScreenUI.logo, 0.5, 0.2, 0.2, 0.2)
        SetSpritePosition(loadingScreenUI.progressBar, 0.5, 0.5, 0.5, 0.1)
        SetSpritePosition(loadingScreenUI.progressBarFill, 0.5, 0.5, 0.5, 0.1)
        SetSpritePosition(loadingScreenUI.loader, 0.5, 0.5, 0.1, 0.1)
        SetText(loadingScreenUI.countdownTimerText, 'Countdown: '..countdownTimer..' seconds')
        SetText(loadingScreenUI.playerNameText, 'Player: '..playerName)
        SetButtonEnabled(loadingScreenUI.interactiveElement, true)
        SetText(loadingScreenUI.newsText, newsItems[1].text)
        SetText(loadingScreenUI.leaderboardText, leaderboard[1].name..' - '..leaderboard[1].type)
      end
    end)
    
    -- Add event listeners
    AddEventHandler('loadingScreen:countdownComplete', function()
      -- Trigger event when countdown timer reaches zero
      TriggerEvent('loadingScreen:complete')
    end)
    
    AddEventHandler('loadingScreen:complete', function()
      -- Remove loading screen UI
      for k, v in pairs(loadingScreenUI) do
        DestroySprite(v)
      end
      -- Stop soundtrack
      StopSound(soundtrack)
      -- Trigger event to continue game
      TriggerEvent('game:continue')
    end)
    
    -- Add interactive element event listener
    AddEventHandler('button:click', function(button)
      if button == loadingScreenUI.interactiveElement then
        -- Trigger event when interactive element is clicked
        TriggerEvent('loadingScreen:interactiveElementClicked')
      end
    end)
    
    -- Add news or announcement system event listener
    AddEventHandler('news:update', function()
      -- Update news or announcement system
      newsItems[1].text = 'Server update: New vehicles added!'
      SetText(loadingScreenUI.newsText, newsItems[1].text)
    end)
    
    -- Add leaderboard event listener
    AddEventHandler('leaderboard:update', function()
      -- Update leaderboard
      leaderboard[1].name = 'Top Players'
      leaderboard[1].type = 'level'
      SetText(loadingScreenUI.leaderboardText, leaderboard[1].name..' - '..leaderboard[1].type)
    end)