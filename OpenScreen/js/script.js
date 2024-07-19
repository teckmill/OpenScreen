let progressBarFill = document.getElementById('progress-bar-fill');
let countdownTimerText = document.getElementById('countdown-timer-text');
let playerNameText = document.getElementById('player-name-text');
let interactiveButton = document.getElementById('interactive-button');
let newsText = document.getElementById('news-text');
let leaderboardText = document.getElementById('leaderboard-text');

let countdownTimer = 30;
let playerName = '';

// Update countdown timer
setInterval(() => {
  countdownTimer -= 1;
  countdownTimerText.textContent = `Countdown: ${countdownTimer} seconds`;
  if (countdownTimer <= 0) {
    // Trigger event when countdown timer reaches zero
    console.log('Countdown complete!');
  }
}, 1000);

// Update player name
playerName = GetPlayerName(PlayerId());
playerNameText.textContent = `Player: ${playerName}`;

// Interactive element event listener
interactiveButton.addEventListener('click', () => {
  console.log('Button clicked!');
  // Trigger event when button is clicked
});

// Update news text
newsText.textContent = 'Server update: New vehicles added!';

// Update leaderboard text
leaderboardText.textContent = 'Top Players - Level';