# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/profile.pre.bash" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/profile.pre.bash"
. "$HOME/.cargo/env"
export PATH=/Users/byte/.nimble/bin:$PATH

# >>> coursier install directory >>>
export PATH="$PATH:/Users/byte/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/profile.post.bash" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/profile.post.bash"
