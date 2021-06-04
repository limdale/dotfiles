# Big Sur 11.4
# you can know what defaults changes where by doing defaults read
# do defaults read then change the pref then do defaults read again then diff the two
defaults -currentHost write -g  com.apple.driver.AppleBluetoothMultitouch.trackpad.Clicking -int 1
defaults -currentHost write -g com.apple.swipescrolldirection -bool NO
