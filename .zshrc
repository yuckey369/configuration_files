# ʸ��������
export locale=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
setopt print_eightbit

# �ҥ��ȥ������
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
#export HISTFILE=~/.hist/history.`date +%y%m%d%H%M`
#HISTFILE=~/.hist/history.`date +%y%m%d%H%M`
export LS_COLORS='di=01;36'

export EDITOR=vim

# �ǥե���Ȥ��䴰��ǽ��ͭ��
autoload -U compinit
compinit

# �ץ��ץȤΥ��顼ɽ����ͭ��
autoload -U colors
colors
    
# �䴰���뤫�μ���ϲ��̤�Ķ������ˤΤߤ˹Ԥ�
LISTMAX=0

# �䴰���䤬ʣ��������ˡ�����ɽ��
setopt auto_list

# cd �� pushd
setopt auto_pushd

# ���ޥ�ɤ�����
#setopt correct

# list�ΰ���ɽ��
setopt list_packed

# �ӡ��ײ���ä�
setopt nolistbeep

# ʣ���� zsh ��Ʊ���˻Ȥ����ʤ� history �ե�����˾�񤭤����ɲ�
setopt append_history

# ���ޥ�ɥ饤��ΰ����� --prefix=/usr �ʤɤ� = �ʹߤǤ��䴰�Ǥ���
setopt magic_equal_subst

# Ctrl+D �ǤϽ�λ���ʤ��褦�ˤʤ��exit, logout �ʤɤ�Ȥ���
setopt ignore_eof

# ʣ��������쥯��
setopt multios

# ������Υץ������Ȥ������ͭ
setopt share_history

# �ҥ��ȥ��ƤӽФ��Ƥ���¹Ԥ���֤˰�ö�Խ��Ǥ�����֤ˤʤ�
#setopt hist_verify

# �ǥ��쥯�ȥ�̾���䴰�������� / ��ưŪ���ղä��������䴰��������
#setopt auto_param_slash

# C-s, C-q��̵���ˤ��롣
setopt NO_flow_control

# �ǥ��쥯�ȥꥹ���å���Ʊ���ǥ��쥯�ȥ���ɲä��ʤ��褦�ˤʤ�
#setopt pushd_ignore_dup

# rm_star_silent �εդǡ�10 �ô�ȿ�����ʤ��ʤꡢƬ����ޤ����֤�Ϳ������
#setopt rm_star_wait

# rm * �ʤɤκݡ����������ƤΥե������ä����ɤ����γ�ǧ���ʤ��褦�ˤʤ�
#setopt rm_star_silent
    
# �ǥ��쥯�ȥꥹ���å���Ʊ���ǥ��쥯�ȥ���ɲä��ʤ��褦�ˤʤ�
#setopt pushd_ignore_dup

# rm_star_silent �εդǡ�10 �ô�ȿ�����ʤ��ʤꡢƬ����ޤ����֤�Ϳ������
#setopt rm_star_wait

# ��Ƭ�����ڡ����ʤ�ҥ��ȥ꡼���ɲä��ʤ���
#setopt hist_ignore_space

# ������쥯�ȤǾ�񤭤��������Ĥ��ʤ���
#setopt no_clobber

# �ҥ��ȥ���ɲä���륳�ޥ�ɹԤ��Ť���Τ�Ʊ���ʤ�Ť���Τ���
#setopt hist_ignore_all_dups

# ����ե�����˻����Ͽ
#setopt extended_history
    
# ls�����Ȥ��ο�������
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Ctrl+w��/�ޤǤ�ʸ�������
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# ����򥿥֤�����
zstyle ':completion:*default' menu select=1
# �䴰����ʸ���Ⱦ�ʸ������̤��ʤ��褦�ˤ�����(��ʸ����Ÿ�����ʤ�)

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#PROMPT='[%n@%m]# '
#RPROMPT='[%~ %T]'
PROMPT="%B%{${fg[green]}%}[%n@%m]%{${reset_color}%}%b"
RPROMPT="%B%{${fg[green]}%}[%~ %T]%{${reset_color}%}%b"

# �Ǹ���Ǥä����ޥ�ɥ��ơ������Ԥ�
if [ "$TERM" = "screen" ]; then
        chpwd () { echo -n "_`dirs`\\" }
        preexec() {
                # see [zsh-workers:13180]
                # http://www.zsh.org/mla/workers/2000/msg03993.html
                emulate -L zsh
                local -a cmd; cmd=(${(z)2})
                case $cmd[1] in
                        fg)
                                if (( $#cmd == 1 )); then
                                        cmd=(builtin jobs -l %+)
                                else
                                        cmd=(builtin jobs -l $cmd[2])
                                fi
                                ;;
                        %*)
                                cmd=(builtin jobs -l $cmd[1])
                                ;;
                        ssh)
                                if (( $#cmd == 2 )); then
                                        cmd[1]=$cmd[2]
                                fi
                                ;&
                        sudo)
                                if (( $#cmd == 3 )); then
                                        if [ $cmd[2] = "ssh" ]; then
                                              cmd[1]=$cmd[3]
                                        fi
                                fi
                                ;&
                        *)
                                echo -n "k$cmd[1]:t\\"
                                return
                                ;;
                esac

                local -A jt; jt=(${(kv)jobtexts})

                $cmd >>(read num rest
                        cmd=(${(z)${(e):-\$jt$num}})
                        echo -n "^[k$cmd[1]:t\\") 2>/dev/null
        }
        chpwd
fi

# alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tmux="TERM=xterm-256color tmux -u"

