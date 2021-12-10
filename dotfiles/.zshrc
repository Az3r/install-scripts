# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/azer/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitignore npm dotnet web-search tmux
        docker nvm docker-compose mvn
        zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source $NVM_DIR/nvm.sh

# User configuration
export ANDROID_SDK_ROOT=$HOME/Android/Sdk/
export ANDROID_HOME=$ANDROID_SDK_ROOT
export ANDROID_PREFS_ROOT=$HOME
export ANDROID_EMULATOR_HOME=$ANDROID_PREFS_ROOT/.android
export ANDROID_AVD_HOME=$ANDROID_EMULATOR_HOME/avd
export GEM_HOME=$HOME/gems
export DENO_INSTALL=$HOME/.deno
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export NODE_PATH="$(which node)"
export NPM_PATH="$(which npm)"
export GOPATH=$HOME/go
export FLUTTER_SDK=$HOME/.flutter

# comment out one of these below
# source $(openjdk) # only if install openjdk from p, this will set JAVA_HOME for you
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 # if you install openjdk-11-jdk from apt-get and you want to develop android application

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

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
alias vim="nvim"
alias lg="lazygit"
alias python="python3"
alias pip="pip3"
alias fd="fdfind"
alias code="code-insiders"

path+=$ANDROID_SDK_ROOT/emulator 
path+=$ANDROID_SDK_ROOT/tools
path+=$ANDROID_SDK_ROOT/tools/bin
path+=$ANDROID_SDK_ROOT/platform-tools
path+=$GEM_HOME/bin
path+=$DENO_INSTALL/bin
path+=$HOME/.local/bin
path+="$GOPATH/bin"
path+=/usr/local/go/bin 
path+=$HOME/.dotnet/tools
path+=/opt/mssql-tools/bin
path+=$HOME/.cargo/bin
path+="$FLUTTER_SDK/bin"
