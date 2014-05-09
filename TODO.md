# To Do's and Random Notes

hdiutil mount googlechrome.dmg


# Install XCode Select; follow prompts to proceed 
sudo xcodebuild -license
xcode-select --install

# Will install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor

# Clone the dotfiles project 
mkdir Projects && cd Projects
git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && source bootstrap.sh

# Run the osx defaults
./.osx

# Add Xquartz to the Caskfile
# Install Native Applications
brew bundle ~/Caskfile

# Install Brewfile packages
brew bundle ~/Brewfile

# Install RVM with Rails. Let's not install all the ri docs for every rails gem dependency
echo "gem: --no-document" >> ~/.gemrc
\curl -sSL https://get.rvm.io | bash -s stable --rails
source ~/.rvm/scripts/rvm

# Run RVM in shell as a function
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile

# Check the RVM installation
rvm -v 
ruby -v 
rails -v
brew doctor

# Missing: 
postgres
