# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/azimao/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="ys"
#ZSH_THEME="maran"

#ZSH_THEME="mh"
#ZSH_THEME="muse"
#ZSH_THEME="refined"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
autojump
osx
brew
node
npm
zsh-autosuggestions
zsh-completions
fast-syntax-highlighting
zsh-vi-mode
)

ZVM_VI_ESCAPE_BINDKEY=ee

source $ZSH/oh-my-zsh.sh

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
alias cls='clear'
alias ll='ls -l -a'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
function mcd {
  mkdir $1 && cd $1;
}
function cdf() {
  cd "$(pfd)"
}
alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'


#alias empbranch='sshpass -p MfXe3EE1m1koIjGJ ssh liugang@10.60.36.60'
#alias empjump='sshpass -p \$Maomao320 ssh -p 2222 maoyu@10.4.6.13'


alias vt='ssh root@207.148.17.179'
alias tx='ssh root@111.230.175.118'
alias al='ssh root@47.240.47.7'
alias ahao='ssh root@119.91.69.194'
alias s='sudo'
alias dc='docker-compose'
alias sb='open -a /Applications/Sublime\ Text.app'
#alias phps='open -a /Users/azimao/Applications/JetBrains\ Toolboxi/PhpStorm.app'
alias phps='open -na /Users/azimao/Applications/JetBrains\ Toolbox/PhpStorm.app --args $@'

alias azinginx='docker exec -it dcnmp_nginx_1 /bin/sh'
alias aziphp56='docker exec -it dcnmp_php56_1 /bin/sh'
alias aziphp71='docker exec -it dcnmp_php71_1 /bin/sh'
alias aziphp72='docker exec -it dcnmp_php72_1 /bin/sh'
alias azimysql='docker exec -it dcnmp_mysql_1 /bin/bash'
alias aziredis='docker exec -it dcnmp_redis_1 /bin/sh'

alias larawork='cd /Users/azimao/Docker/laradock && docker-compose exec workspace bash'


#alias python='/usr/bin/python3'

alias python='/usr/local/bin/python3'


[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export GOPATH="/usr/local/opt/go@1.14.10/bin:$PATH"
export GOPATH="$HOME/gopath"
export GOPROXY=https://goproxy.io

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
# 将 Python 3.x 的解释器路径添加到 PATH 环境变量中
#export PATH="/usr/local/Cellar/python@3.11/3.11.2_1/bin:$PATH"



#.net 跨平台MONO
export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/6.8.0
export PATH=$PATH:$MONO_HOME/bin


# java环境变量
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
#export PATH=$JAVA_HOME/bin:$PATH:.
#export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
#export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles


#export http_proxy=http://127.0.0.1:7890
#export https_proxy=$http_proxy
#export all_proxy=$http_proxy

#zsh-vi-mode配置
# Ctrl+K for escape
#ZVM_VI_ESCAPE_BINDKEY='ee'
#ZVM_VI_INSERT_ESCAPE_BINDKEY='ee'
#ZVM_VI_VISUAL_ESCAPE_BINDKEY='ee'
#ZVM_VI_OPPEND_ESCAPE_BINDKEY='ee'



function zvm_after_init() {
    zvm_bindkey viins 'aa' autosuggest-accept
    zvm_bindkey viins '^a' autosuggest-accept
}

#绑定自动提示快捷键
#bindkey 'aa' autosuggest-accept
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/azimao/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="ys"
#ZSH_THEME="maran"

#ZSH_THEME="mh"
#ZSH_THEME="muse"
#ZSH_THEME="refined"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
autojump
osx
brew
node
npm
zsh-autosuggestions
zsh-completions
fast-syntax-highlighting
zsh-vi-mode
)

ZVM_VI_ESCAPE_BINDKEY=ee

source $ZSH/oh-my-zsh.sh

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
alias cls='clear'
alias ll='ls -l -a'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
function mcd {
  mkdir $1 && cd $1;
}
function cdf() {
  cd "$(pfd)"
}
alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'


#alias empbranch='sshpass -p MfXe3EE1m1koIjGJ ssh liugang@10.60.36.60'
#alias empjump='sshpass -p \$Maomao320 ssh -p 2222 maoyu@10.4.6.13'


alias vt='ssh root@207.148.17.179'
alias tx='ssh root@111.230.175.118'
alias al='ssh root@47.240.47.7'
alias ahao='ssh root@119.91.69.194'
alias s='sudo'
alias dc='docker-compose'
alias sb='open -a /Applications/Sublime\ Text.app'
#alias phps='open -a /Users/azimao/Applications/JetBrains\ Toolboxi/PhpStorm.app'
alias phps='open -na /Users/azimao/Applications/JetBrains\ Toolbox/PhpStorm.app --args $@'

alias azinginx='docker exec -it dcnmp_nginx_1 /bin/sh'
alias aziphp56='docker exec -it dcnmp_php56_1 /bin/sh'
alias aziphp71='docker exec -it dcnmp_php71_1 /bin/sh'
alias aziphp72='docker exec -it dcnmp_php72_1 /bin/sh'
alias azimysql='docker exec -it dcnmp_mysql_1 /bin/bash'
alias aziredis='docker exec -it dcnmp_redis_1 /bin/sh'

alias larawork='cd /Users/azimao/Docker/laradock && docker-compose exec workspace bash'


#alias python='/usr/bin/python3'

alias python='/usr/local/bin/python3'


[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export GOPATH="/usr/local/opt/go@1.14.10/bin:$PATH"
export GOPATH="$HOME/gopath"
export GOPROXY=https://goproxy.io

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
# 将 Python 3.x 的解释器路径添加到 PATH 环境变量中
#export PATH="/usr/local/Cellar/python@3.11/3.11.2_1/bin:$PATH"



#.net 跨平台MONO
export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/6.8.0
export PATH=$PATH:$MONO_HOME/bin


# java环境变量
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
#export PATH=$JAVA_HOME/bin:$PATH:.
#export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
#export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles


#export http_proxy=http://127.0.0.1:7890
#export https_proxy=$http_proxy
#export all_proxy=$http_proxy

#zsh-vi-mode配置
# Ctrl+K for escape
#ZVM_VI_ESCAPE_BINDKEY='ee'
#ZVM_VI_INSERT_ESCAPE_BINDKEY='ee'
#ZVM_VI_VISUAL_ESCAPE_BINDKEY='ee'
#ZVM_VI_OPPEND_ESCAPE_BINDKEY='ee'



function zvm_after_init() {
    zvm_bindkey viins 'aa' autosuggest-accept
    zvm_bindkey viins '^a' autosuggest-accept
}

#绑定自动提示快捷键
#bindkey 'aa' autosuggest-accept
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/azimao/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="ys"
#ZSH_THEME="maran"

#ZSH_THEME="mh"
#ZSH_THEME="muse"
#ZSH_THEME="refined"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
autojump
osx
brew
node
npm
zsh-autosuggestions
zsh-completions
fast-syntax-highlighting
zsh-vi-mode
)

ZVM_VI_ESCAPE_BINDKEY=ee

source $ZSH/oh-my-zsh.sh

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
alias cls='clear'
alias ll='ls -l -a'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
function mcd {
  mkdir $1 && cd $1;
}
function cdf() {
  cd "$(pfd)"
}
alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'


#alias empbranch='sshpass -p MfXe3EE1m1koIjGJ ssh liugang@10.60.36.60'
#alias empjump='sshpass -p \$Maomao320 ssh -p 2222 maoyu@10.4.6.13'


alias vt='ssh root@207.148.17.179'
alias tx='ssh root@111.230.175.118'
alias al='ssh root@47.240.47.7'
alias ahao='ssh root@119.91.69.194'
alias s='sudo'
alias dc='docker-compose'
alias sb='open -a /Applications/Sublime\ Text.app'
#alias phps='open -a /Users/azimao/Applications/JetBrains\ Toolboxi/PhpStorm.app'
alias phps='open -na /Users/azimao/Applications/JetBrains\ Toolbox/PhpStorm.app --args $@'

alias azinginx='docker exec -it dcnmp_nginx_1 /bin/sh'
alias aziphp56='docker exec -it dcnmp_php56_1 /bin/sh'
alias aziphp71='docker exec -it dcnmp_php71_1 /bin/sh'
alias aziphp72='docker exec -it dcnmp_php72_1 /bin/sh'
alias azimysql='docker exec -it dcnmp_mysql_1 /bin/bash'
alias aziredis='docker exec -it dcnmp_redis_1 /bin/sh'

alias larawork='cd /Users/azimao/Docker/laradock && docker-compose exec workspace bash'


#alias python='/usr/bin/python3'

alias python='/usr/local/bin/python3'


[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export GOPATH="/usr/local/opt/go@1.14.10/bin:$PATH"
export GOPATH="$HOME/gopath"
export GOPROXY=https://goproxy.io

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
# 将 Python 3.x 的解释器路径添加到 PATH 环境变量中
#export PATH="/usr/local/Cellar/python@3.11/3.11.2_1/bin:$PATH"



#.net 跨平台MONO
export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/6.8.0
export PATH=$PATH:$MONO_HOME/bin


# java环境变量
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
#export PATH=$JAVA_HOME/bin:$PATH:.
#export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
#export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles


#export http_proxy=http://127.0.0.1:7890
#export https_proxy=$http_proxy
#export all_proxy=$http_proxy

#zsh-vi-mode配置
# Ctrl+K for escape
#ZVM_VI_ESCAPE_BINDKEY='ee'
#ZVM_VI_INSERT_ESCAPE_BINDKEY='ee'
#ZVM_VI_VISUAL_ESCAPE_BINDKEY='ee'
#ZVM_VI_OPPEND_ESCAPE_BINDKEY='ee'



function zvm_after_init() {
    zvm_bindkey viins 'aa' autosuggest-accept
    zvm_bindkey viins '^a' autosuggest-accept
}

#绑定自动提示快捷键
#bindkey 'aa' autosuggest-accept
