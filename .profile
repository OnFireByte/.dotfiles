# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/profile.pre.bash"
. "$HOME/.cargo/env"
export PATH=/Users/byte/.nimble/bin:$PATH

# >>> coursier install directory >>>
export PATH="$PATH:/Users/byte/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/profile.post.bash" ]] && builtin source "$HOME/.fig/shell/profile.post.bash"
