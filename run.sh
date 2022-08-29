ln -sf ~/.dotfiles/.bashrc ~/
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sf ~/.dotfiles/.hushlogin ~/
ln -sf ~/.dotfiles/.iterm2_shell_integration.zsh ~/
ln -sf ~/.dotfiles/.profile ~/
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.zprofile ~/
ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.config ~/
mkdir -p ~/.oh-my-zsh
ln -sf ~/.dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install brew package
brew bundle --file ~/.dotfiles/Brewfile