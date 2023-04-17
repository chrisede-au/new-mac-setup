clear


# To Do

    # Ask for sudo password at the start

# Software Updates
echo "Installing Software Updates from Apple"
#sudo softwareupdate --install --all

echo "Install Rosetta"
#sudo softwareupdate --install-rosetta --agree-to-license


# Homebrew - Install Core
echo "Installing Rosetta"
#NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Homebrew - Install Casks & Packages
cd ./apps/homebrew/
for i in *.sh ; do

    sh $i

done

# Apple App Store


# Other


# App Config Tweaks

# Jackett
# brew services restart jackett

# Apps to find scriptable ways for (from the App Store, generally. I have probably forgotten a lot.)
# Side note. I understand comments now. It's not because I should know the correct answer (a complete list). It's that I should remember there's SOME important info. And I'll remember to do a new list before I next reformat.)
# I'm high. Weed. Thanks high brain :)

# Down Dog Yoga
# Down Dog Meditation
