#!/bin/zsh

# Mac OS settings

# Dark mode
defaults write "Apple Global Domain" AppleInterfaceStyle -string "Dark"

# Locale
defaults write "Apple Global Domain" AppleICUNumberSymbols -dict 0 '.' 10 '.'
defaults write "Apple Global Domain" AppleLanguages -array "en-US" "fi-FI" "zh-Hans-US"
defaults write "Apple Global Domain" AppleLocale -string "en_FI"
defaults write "Apple Global Domain" AppleMeasurementUnits -string "Centimeters"
defaults write "Apple Global Domain" AppleMetricUnits -bool true
defaults write "Apple Global Domain" AppleTemperatureUnit -string "Celsius"
defaults write "Apple Global Domain" NSAutomaticCapitalizationEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticDashSubstitutionEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticSpellingCorrectionEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticTextCompletionEnabled -bool false
defaults write "Apple Global Domain" WebAutomaticSpellingCorrectionEnabled -bool false

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -integer 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -integer 0

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -integer 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -integer 0

# Dock
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock largesize -integer 75
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock show-recents -bool false

# Hot corners
defaults write com.apple.dock wvous-bl-corner -integer 5
defaults write com.apple.dock wvous-bl-modifier -integer 0
defaults write com.apple.dock wvous-tl-corner -integer 6
defaults write com.apple.dock wvous-tl-modifier -integer 0
defaults write com.apple.dock wvous-tr-corner -integer 2
defaults write com.apple.dock wvous-tr-modifier -integer 0

# Finder
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
defaults write com.apple.finder ShowRecentTags -bool false

# Menubar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.clock DateFormat -string "EEE d. MMM  H.mm.ss"
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false

# Touch bar
defaults write com.apple.controlstrip FullCustomized -array "com.apple.system.group.brightness" "com.apple.system.mission-control" "com.apple.system.launchpad" "com.apple.system.group.keyboard-brightness" "com.apple.system.group.media" "com.apple.system.group.volume" "com.apple.system.screen-saver" "com.apple.system.screen-lock"
defaults write com.apple.touchbar.agent PresentationModeGlobal -string "fullControlStrip"

# Screenshots directory
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location -string ~/Pictures/Screenshots

# Add custom keyboard layout
if [ ! -f ~/Library/Keyboard\ Layouts/FinnishAmerican.keylayout ]; then
  cp files/FinnishAmerican.keylayout ~/Library/Keyboard\ Layouts/FinnishAmerican.keylayout
fi
