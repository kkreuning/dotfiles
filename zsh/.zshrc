source ~/.zsh/exports.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh

source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  brew
  brew-cask
  colored-man-pages
  command-not-found
  git
  osx
  marzocchi/zsh-notify
  Tarrasch/zsh-autoenv
  tmux
  zsh-users/zsh-autosuggestions
  zsh-users/zsh-completions
  zsh-users/zsh-syntax-highlighting
EOBUNDLES

antigen theme geometry-zsh/geometry

antigen apply

# GPG agent
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye >> /dev/null

# zsh-notify dogefy https://gist.github.com/marzocchi/14c47a49643389029a2026b4d4fec7ae
zstyle ':notify:*' error-icon "https://media3.giphy.com/media/10ECejNtM1GyRy/200_s.gif"
zstyle ':notify:*' error-title "wow such #fail"
zstyle ':notify:*' success-icon "https://s-media-cache-ak0.pinimg.com/564x/b5/5a/18/b55a1805f5650495a74202279036ecd2.jpg"
zstyle ':notify:*' success-title "very #success. wow"

# Start in TMUX session
if [ -z "$TMUX" ]
then
	tmux attach -t TMUX || tmux new -s TMUX
fi

