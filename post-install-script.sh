## SET HOSTNAME IN ALL THE RIGHT PLACES
sudo scutil --set ComputerName "MACHINE_NAME"
sudo scutil --set HostName "MACHINE_NAME"
sudo scutil --set LocalHostName "MACHINE_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "MACHINE_NAME"

## Remove items from dock that I won't use
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/Mail/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/Contacts/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/Calendar/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/Reminders/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/Maps/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/Facetime/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/iTunes/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/iBooks/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock
dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk '/Notes/ {print NR}') && /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist && killall Dock

## INSTALL XCODE
xcode-select --install
read -p "Press any key to continue." -n1 -s

## Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### CLI tools
brew install caskroom/cask/brew-cask
brew install curl
brew install Caskroom/cask/java
brew install elasticsearch
brew install gcc
brew install git
brew install gnuplot --with-qt
brew install irssi
brew install ncdu
brew install nodejs
brew install phantomjs
brew install scala
brew install the_silver_searcher
brew install tig
brew install tree
brew install unrar
brew install wakeonlan
brew install wget

### Cask
brew cask install 1password
brew cask install alfred
brew cask install angry-ip-scanner
brew cask install calibre
brew cask install dash
brew cask install debookee
brew cask install evernote
brew cask install fantastical
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install kodi
brew cask install mou
brew cask install opera
brew cask install omnifocus
brew cask install postgres
brew cask install slack
brew cask install spotify
brew cask install steam
brew cask install transmission
brew cask install vitrualbox
brew cask install vlc
brew cask install sublime-text

## INSTALL OH MY ZSH AND SET ZSH AS DEFAULT SHELL
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

## RUN A MACOS UPDATE
sudo softwareupdate --install -all
