source ~/zsh-snap/znap.zsh

# znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

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


plugins=(git aws)

source $ZSH/oh-my-zsh.sh

function z-node() {
    export NVM_DIR="$HOME/.nvm"
    source $(brew --prefix nvm)/nvm.sh
}

function z-direnv() {
    eval "$(direnv hook zsh)"
}

function z-py() {
    pyenv global 3.8.11
    export PYENV_ROOT="$HOME/.pyenv"
    add-to-path "$PYENV_ROOT/bin"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    add-to-path "/Users/ajmal/.local/bin"

    # poetry env use $(pyenv which python)
    # export PATH="$HOME/.poetry/bin:$PATH"
}

function add-to-path() {
    export PATH="$PATH:$1"
}

function z-bun() {
    # bun completions
    [ -s "/Users/ajmal/.bun/_bun" ] && source "/Users/ajmal/.bun/_bun"

    # bun
    export BUN_INSTALL="$HOME/.bun"
    export PATH="$BUN_INSTALL/bin:$PATH"
}

function z-yadm() {
    alias sysyadm="sudo yadm --yadm-dir /etc/yadm --yadm-data /etc/yadm/data"
}
