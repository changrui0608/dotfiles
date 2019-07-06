export PATH=$PATH:~/go/bin:~/

# export TERM="xterm-color" 
export CLICOLOR=1
# export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export PS1='\[\e[0;32m\][\D{%F %T}] \[\e[1;33m\]\u\[\e[1;30m\]@\e[0;35m\]\h\[\e[0;36m\] \w \[\e[0m\] \n\$ '

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CFh'

alias g++='g++ --std=c++17'

export PYTHONDONTWRITEBYTECODE="_"

export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

export PATH="$HOME/.cargo/bin:$PATH"
export RUSTUP_DIST_SERVER='https://mirrors.tuna.tsinghua.edu.cn/rustup'
export PATH="/usr/local/opt/ncurses/bin:$PATH"
