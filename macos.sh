# Big Sur 11.4
# you can know what defaults changes where by doing defaults read
# do defaults read then change the pref then do defaults read again then diff the two

# Tap to click
defaults -currentHost write -g com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Disable "natural" scrolling direction
defaults -currentHost write -g com.apple.swipescrolldirection -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults -currentHost write -g NSGlobalDomain ApplePressAndHoldEnabled -bool false
