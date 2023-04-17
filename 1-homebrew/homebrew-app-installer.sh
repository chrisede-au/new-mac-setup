#!/bin/sh

# Set variables for colour output
colourSuccess='\e[1;32m'
colourFail='\e[1;31m'
colourNone='\e[0m' # No Color


### Homebrew
installHomebrew () {
    # Needs sudo password

    which -s brew
    if [[ $? != 0 ]] ; then
        printf "${colourSuccess}Installing Homebrew${colourNone}\n\n"

        NONINTERACTIVE=1 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        printf "${colourSuccess}Homebrew already installed... updating${colourNone}\n\n"
        brew update --quiet
    fi
}

homebrewGetAppInfo () {
    # Gets app info from Homebrew to display
    # Not 100% as it relies on certain info to be on certain lines
    # Better if there is a defined method to find this info

    package=$1

    appNameNice=$(brew info $package | sed -n '6p')
    appDesc=$(brew info $package | sed -n '8p')
    appURL=$(brew info $package | sed -n '2p')
}

homebrewInstallApp () {
    echo "$appNameNice - $appDesc"
    echo "$appURL"

    brew install $package --quiet
}

homebrewCheckAppInstalled () {
    if brew list | grep $package > /dev/null; then
        # The package is installed
        printf "${colourSuccess}Installation Successful${colourNone}\n\n"
    else
        # The package is not installed
        printf "${colourFail}Installation NOT Successful${colourNone}\n\n"
    fi
}

installHomebrewApps () {
    while read i; do
        homebrewGetAppInfo $i
        homebrewInstallApp $i
        homebrewCheckAppInstalled $i
    done <homebrew-app-list.txt
}

installHomebrew
installHomebrewApps