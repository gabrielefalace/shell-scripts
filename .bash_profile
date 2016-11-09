# Enable syntax-highlighting in less.
# brew install source-highlight
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
# alias less='less -m -N -g -i -J --underline-special --SILENT'

export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad # light themes
export LSCOLORS=GxFxCxDxBxegedabagaced  # dark themes
export GREP_OPTIONS='--color=always'

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) $ "
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
