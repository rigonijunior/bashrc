###########

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


alias contaArquivos='find . -type f | wc -l'
alias contaPastas='du -hsx . | sort -rh | head -20'

## Delere recursivo
find . -name "advice-cbb" -exec rm -rf {} \;
#


alias l='(((dr|dxdw).*\n|.*20[0-9][0-9] )|(:\n.*\n))'


# sed regex Replace
sed -i ':a;N;$!ba;s/\n/ /g' file

# deleta arquivos
perl -e 'for(<*>){((stat)[9]<(unlink))}'

find ./ -type f -delete

# regex por negação
^(?:(?!ab).)+$

(?m)^(?!.*\bquo\b).+$

(?m)^(?:(?!\bquo\b).)+$


########### curl
curl -O --no-progress-meter $url
## Or
wget -q $url
###########

###########
# Git Parcer
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\[\033[36m\]\u\[\033[34m\]@\[\033[36m\]\h\[\033[34m\]:\[\033[00m\]\w\[\033[32m\]$(parse_git_branch)\[\033[00m\]\[\033[31m\]\$\[\033[00m\] '
fi
unset color_prompt force_color_prompt

###########
