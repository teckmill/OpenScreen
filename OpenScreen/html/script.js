// Loading tips
const tips = [
    "Welcome to SLR RP - Your Ultimate Roleplay Experience",
    "Try our new car rental system at the PDM parking lot!",
    "Looking for work? Check out our unique job opportunities",
    "Stay in character and enhance everyone's RP experience",
    "Need a ride? Visit our car rental locations around the city",
    "Explore our custom features and activities",
    "Be respectful to other players and staff members",
    "Join our community events for special rewards",
    "Remember to /report any bugs or issues",
    "Make sure to read our server rules before playing",
    "Engage with the community and make new friends",
    "Check out our advanced housing system",
    "Need help? Our staff team is here 24/7"
];

// Initialize variables
let currentTip = 0;
let progress = 0;
const music = document.getElementById('backgroundMusic');
const musicBtn = document.getElementById('toggleMusic');
let musicPlaying = false;

// Function to update the loading tip
function updateTip() {
    const tipElement = document.querySelector('.loading-tip');
    tipElement.style.opacity = '0';
    
    setTimeout(() => {
        tipElement.textContent = tips[currentTip];
        tipElement.style.opacity = '1';
        currentTip = (currentTip + 1) % tips.length;
    }, 500);
}

// Function to update progress bar
function updateProgress() {
    const progressBar = document.querySelector('.progress');
    if (progress < 100) {
        progress += Math.random() * 2;
        if (progress > 100) progress = 100;
        progressBar.style.width = `${progress}%`;
        
        // Update loading text based on progress
        const loadingText = document.querySelector('.loading-text');
        if (progress < 30) {
            loadingText.textContent = 'Loading assets...';
        } else if (progress < 60) {
            loadingText.textContent = 'Initializing scripts...';
        } else if (progress < 90) {
            loadingText.textContent = 'Connecting to server...';
        } else {
            loadingText.textContent = 'Almost ready...';
        }
    }
}

// Toggle music function
function toggleMusic() {
    if (musicPlaying) {
        music.pause();
        musicBtn.querySelector('.music-text').textContent = 'Music Off';
        musicBtn.style.background = 'rgba(255, 255, 255, 0.1)';
    } else {
        music.play();
        musicBtn.querySelector('.music-text').textContent = 'Music On';
        musicBtn.style.background = 'rgba(0, 255, 136, 0.2)';
    }
    musicPlaying = !musicPlaying;
}

// Event listeners
document.addEventListener('DOMContentLoaded', () => {
    // Start with first tip
    updateTip();
    
    // Change tip every 5 seconds
    setInterval(updateTip, 5000);
    
    // Update progress bar
    setInterval(updateProgress, 100);
    
    // Music button click handler
    musicBtn.addEventListener('click', toggleMusic);
});

// Handle loading events from the game
window.addEventListener('message', function(e) {
    if (e.data.eventName === 'loadProgress') {
        progress = e.data.loadFraction * 100;
        updateProgress();
    }
});
