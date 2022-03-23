# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Parallel
# This helps us to get a list of apps installed with Parallels for next time
# eg brew list --formula | parallel "brew info {} | egrep '[0-9]* files, ' | sed 's/^.*[0-9]* files, \(.*\)).*(/{}) \1/'" | sort -k2 -hr
brew install parallel; parallel --citation   #Skip this step if parallel is already installed


# Install Homebrew Apps
brew install appcleaner
brew install breaktimer
brew install firefox
brew install github
brew install monitor-control
brew install reeder
brew install sensibo
brew install spotify
brew install steam
brew install the-unarchiver
brew install vscode
brew install whatsapp

# Configure Dock
defaults write com.apple.dock orientation left
defaults write com.apple.dock show-recents -bool FALSE

killall Dock
