# ╩╕╗·е│б╝е╔
export locale=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
setopt print_eightbit

# е╥е╣е╚еъд╬└▀─ъ
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
#export HISTFILE=~/.hist/history.`date +%y%m%d%H%M`
#HISTFILE=~/.hist/history.`date +%y%m%d%H%M`
export LS_COLORS='di=01;36'

export EDITOR=vim

# е╟е╒ейеые╚д╬╩ф┤░╡б╟╜дЄ═н╕·
autoload -U compinit
compinit

# е╫еэеєе╫е╚д╬елещб╝╔╜╝идЄ═н╕·
autoload -U colors
colors
    
# ╩ф┤░д╣дыдлд╬╝┴╠фд╧▓ш╠╠дЄ─╢диды╗■д╦д╬д▀д╦╣╘дж
LISTMAX=0

# ╩ф┤░╕ї╩фдм╩г┐Їдвды╗■д╦бв░ь═ў╔╜╝и
setopt auto_list

# cd д╟ pushd
setopt auto_pushd

# е│е▐еєе╔д╬─√└╡
#setopt correct

# listд╬░╡╜╠╔╜╝и
setopt list_packed

# е╙б╝е╫▓╗дЄ╛├д╣
setopt nolistbeep

# ╩г┐Їд╬ zsh дЄ╞▒╗■д╦╗╚дж╗■д╩д╔ history е╒ебедеыд╦╛х╜ёднд╗д║─╔▓├
setopt append_history

# е│е▐еєе╔ещедеєд╬░·┐Їд╟ --prefix=/usr д╩д╔д╬ = ░╩╣▀д╟дт╩ф┤░д╟днды
setopt magic_equal_subst

# Ctrl+D д╟д╧╜к╬╗д╖д╩дддшджд╦д╩дыб╩exit, logout д╩д╔дЄ╗╚джб╦
setopt ignore_eof

# ╩г┐Їеъе└едеьепе╚
setopt multios

# е╖езеыд╬е╫еэе╗е╣д┤д╚д╦═·╬ЄдЄ╢ж═н
setopt share_history

# е╥е╣е╚еъдЄ╕╞д╙╜╨д╖д╞длдщ╝┬╣╘д╣ды┤╓д╦░ь├╢╩╘╜╕д╟днды╛ї┬╓д╦д╩ды
#setopt hist_verify

# е╟егеьепе╚еъ╠╛д╬╩ф┤░д╟╦Ў╚°д╬ / дЄ╝л╞░┼кд╦╔╒▓├д╖бв╝бд╬╩ф┤░д╦╚ўдиды
#setopt auto_param_slash

# C-s, C-qдЄ╠╡╕·д╦д╣дыбг
setopt NO_flow_control

# е╟егеьепе╚еъе╣е┐е├епд╦╞▒д╕е╟егеьепе╚еъдЄ─╔▓├д╖д╩дддшджд╦д╩ды
#setopt pushd_ignore_dup

# rm_star_silent д╬╡╒д╟бв10 ╔├┤╓╚┐▒■д╖д╩дпд╩дъбв╞мдЄ╬фд▐д╣╗■┤╓дм═┐дидщдьды
#setopt rm_star_wait

# rm * д╩д╔д╬║▌бв╦▄┼Ўд╦┴┤д╞д╬е╒ебедеыдЄ╛├д╖д╞╬╔дддлд╬│╬╟зд╖д╩дддшджд╦д╩ды
#setopt rm_star_silent
    
# е╟егеьепе╚еъе╣е┐е├епд╦╞▒д╕е╟егеьепе╚еъдЄ─╔▓├д╖д╩дддшджд╦д╩ды
#setopt pushd_ignore_dup

# rm_star_silent д╬╡╒д╟бв10 ╔├┤╓╚┐▒■д╖д╩дпд╩дъбв╞мдЄ╬фд▐д╣╗■┤╓дм═┐дидщдьды
#setopt rm_star_wait

# └ш╞мдме╣е┌б╝е╣д╩дще╥е╣е╚еъб╝д╦─╔▓├д╖д╩ддбг
#setopt hist_ignore_space

# еъе└едеьепе╚д╟╛х╜ёднд╣ды╗ЎдЄ╡Ў▓─д╖д╩ддбг
#setopt no_clobber

# е╥е╣е╚еъд╦─╔▓├д╡дьдые│е▐еєе╔╣╘дм╕┼дддтд╬д╚╞▒д╕д╩дщ╕┼дддтд╬дЄ║я╜№
#setopt hist_ignore_all_dups

# ═·╬Єе╒ебедеыд╦╗■╣ядЄ╡н╧┐
#setopt extended_history
    
# lsд╖д┐д╚днд╬┐здЄ└▀─ъ
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Ctrl+wд╟/д▐д╟д╬╩╕╗·╬єдЄ║я╜№
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# ╕ї╩фдЄе┐е╓д╟┴к┬Є
zstyle ':completion:*default' menu select=1
# ╩ф┤░д╟┬ч╩╕╗·д╚╛о╩╕╗·дЄ╢ш╩╠д╖д╩дддшджд╦д╖д┐дд(┬ч╩╕╗·д╧┼╕│лд╖д╩дд)

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#PROMPT='[%n@%m]# '
#RPROMPT='[%~ %T]'
PROMPT="%B%{${fg[green]}%}[%n@%m]%{${reset_color}%}%b"
RPROMPT="%B%{${fg[green]}%}[%~ %T]%{${reset_color}%}%b"

# ║╟╕хд╦┬╟д├д┐е│е▐еєе╔е╣е╞б╝е┐е╣╣╘д╦
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

