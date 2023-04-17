#!/bin/sh

## Software Update

    # Install any pending software updates
    sudo softwareupdate -ia --force --agree-to-license

    # Install Rosetta
    sudo softwareupdate --install-rosetta --agree-to-license



    # Install XCode Command Line Tools
    xcode-select --install --agree-to-license

## App Store

    # Accept privacy policy
    defaults write ~/Library/Preferences/com.apple.AppStore.plist ASAcknowledgedOnboardingVersion -int 5