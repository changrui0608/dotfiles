function print_colors()
{
    # standard colors
    for C in {40..47}; do
        echo -en "\e[${C}m$C "
    done
    echo ""
    # high intensity colors
    for C in {100..107}; do
        echo -en "\e[${C}m$C "
    done
    echo ""
    # 256 colors
    for C in {16..255}; do
        echo -en "\e[48;5;${C}m$C "
    done
    echo -e "\e(B\e[m"
    echo ""
}
# print_colors
# unset print_colors


function set_prompt()
{
    local BLACK="\e[30m"
    local RED="\e[31m"
    local GREEN="\e[32m"
    local YELLOW="\e[33m"
    local BLUE="\e[34m"
    local PURPLE="\e[35m"
    local CYAN="\e[36m"
    local GREY="\e[37m"
    local DEFAULT="\e[39m"
    local BOLD="\e[1m"
    local NON_BOLD="\e[21m"
    local DIM="\e[2m"
    local NON_DIM="\e[22m"
    local RESET="\e[0m"

    if [ -x "$(command -v tput)" ] && [ $(tput colors) -ge 8 ]; then
        export PS1="${GREEN}[\D{%F %T}] ${YELLOW}\u${GREY}@${PURPLE}\h ${CYAN}\w ${RESET} \n\\$ "
    else
        export PS1="[\D{%F %T}] \u@\h \w \n\\$ "
    fi	
}
set_prompt
unset set_prompt

function set_lang()
{
    # keep default LANG for tty
    if [[ ${TERM} =~ "linux" ]]; then
        return
    fi

    local all_langs=$(locale -a)
    local preferd_langs=("zh_CN.utf8" "en_US.utf8")
    for lang in "${preferd_langs[@]}"
    do
        if [[ "${all_langs}" =~ "${lang}" ]]; then
            export LANG="${lang}"
            break
        fi
    done
}
set_lang
unset set_lang


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CFh'


# rustlang
export PATH="$HOME/.cargo/bin:$PATH"
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup


# python
export PYTHONDONTWRITEBYTECODE="_"


# settings for macOS
if [[ "$OSTYPE" =~ "darwin" ]]; then
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
    export CLICOLOR=1
fi


# if a proxy configure is wanted (exists), load it
if [ -f $HOME/.proxy.sh ]; then
    . $HOME/.proxy.sh
fi
