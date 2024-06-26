###########

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias contaArquivos='find . -type f | wc -l'
alias listaPasta='du -h | egrep -v "\./.+/" | sort -h'
alias listaArquivos='find . -type f  -exec du -h {} + | sort -r -h'
alias redeDns='systemd-resolve --status'
alias ipsBloquedos='fail2ban-client status sshd'

##
# Converte vídeo para mobile
ffmpeg -i entrada.mp4 -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p saida.mp4

# Converte todos arquivos da pasta
for img in *.png; do convert "$img" "${img%.png}.jpg" && rm "$img"; done

## Delete recursivo por extenssão.
find . -name '*.mutex' -type f -delete

## Delete recursivo
find . -name "advice-aaa" -exec rm -rf {} \;
#
## Delete onde dentro do scritp $1 é a pasta e $2 é a extensao
find $1 -name *.$2 -exec rm {} \;

#Desbloquando ip no fail2ban
sudo fail2ban-client set sshd unbanip IP

# sed regex Replace
sed -i ':a;N;$!ba;s/\n/ /g' file

# deleta arquivos
perl -e 'for(<*>){((stat)[9]<(unlink))}'

find ./ -type f -delete

# regex por negação
^(?:(?!ab).)+$

(?m)^(?!.*\bquo\b).+$

(?m)^(?:(?!\bquo\b).)+$

# regex por multiplas linhas
<b>[\w\W]*?(.*?)<\/b>
# ou 
(?s)<div(.*?/div>)


# Percola
pt-query-digest /var/log/mysql/slow.log
########### curl
curl -O --no-progress-meter $url
## Or
wget -q $url
###########

## Convert imagens na pasta
find /caminho/da/pasta -name "*.webp" -exec sh -c 'mogrify -format avif "$0" && rm "$0"' {} \;

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

### Raid 0

sudo mdadm --create /dev/md/Raid8T /dev/nvme2n1 /dev/nvme3n1 /dev/nvme4n1 /dev/nvme5n1 --level=0 --raid-devices=4

