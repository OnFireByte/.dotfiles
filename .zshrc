# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# source ~/Git/zsh-snap/znap.zsh
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export GOPATH=$HOME/go
export PATH=/Users/byte/.nimble/bin:$PATH
export PATH_TO_FX=$HOME/javafx/lib
export PATH=$GOPATH:$GOPATH/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=/Users/byte/.local/bin:$PATH
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="common"
# ZSH_THEME="headline"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.c
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# znap source marlonrichert/zsh-autocomplete

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias python="python3"
alias pip="pip3"


alias wine="CX_BOTTLE='Logic Works' wine"

alias ls="lsd"
alias nf="neofetch"

alias fa='cd "$(fd . $HOME --type d --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)"'
alias faf='cd "$(fd . / --type d --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)"'
alias f='cd $(fd --type d --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)'

alias codefa='code $(fd . $HOME --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv  | fzf)'
alias codef='code $(fd --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv  | fzf)'
alias m="micro"
alias mfa='m $(fd . $HOME --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv  | fzf)'
alias mf='m $(fd --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv  | fzf)'

alias fp='cd $HOME/playground/$(fd . $HOME/playground --type d --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv -d 2 | sed -e "s|^/Users/byte/playground/||" -e "s/\/$//" | fzf)'


alias ff='cd $HOME/playground/$(fd . $HOME/playground --type d --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | sed -e "s|^/Users/byte/playground/||" -e "s/\/$//" | fzf)'

alias work='code $HOME/playground/$(fd . $HOME/playground --type f --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | sed -e "s|^/Users/byte/playground/||" -e "s/\/$//" | grep "\.code-workspace$" | fzf)'

# alias vim="lvim"
alias vimfa='vim $(fd . $HOME --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv  | fzf)'



test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# eval "$(starship init zsh)"
# nf

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
PATH="/usr/local/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/byte/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

[[ -s "/Users/byte/.gvm/scripts/gvm" ]] && source "/Users/byte/.gvm/scripts/gvm"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH=$PATH:/Users/byte/.spicetify

# bun completions
[ -s "/Users/byte/.bun/_bun" ] && source "/Users/byte/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(zoxide init zsh --cmd cd)"


# [[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


PATH=$(pyenv root)/shims:$PATH

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Q post block. Keep at the bottom of this file.
# [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/byte/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

export EDITOR="hx"

eval "$(starship init zsh)"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/byte/.opam/opam-init/init.zsh' ]] || source '/Users/byte/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration


# eval "$(zellij setup --generate-auto-start zsh)"
