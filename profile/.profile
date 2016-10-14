for ruby in ${HOME}/.gem/ruby/*; do
   export PATH="$ruby/bin:${PATH}"
done

CABALPATH=$HOME/.cabal/bin
COMPOSERPATH=$HOME/.composer/vendor/bin
METEORPATH=$HOME/.meteor
CARGOPATH=$HOME/.cargo/bin
export CARGO_HOME=$HOME/.cargo

EXTRA_PATH="$CABALPATH:$RUBYPATH:$RUST_PATH:$COMPOSERPATH:$METEORPATH:$CARGOPATH"

export PATH="$HOME/bin:$PATH:$EXTRA_PATH"
export EDITOR=vim
export GOPATH=$HOME/Work/go
export NODE_PATH=/usr/lib/node_modules

export CTRULIB="/opt/devkitpro/libctru"

#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

#eval $(ssh-agent)

#KEY_TIMEOUT=300 # 5 minutes
#alias ssh="ssh-add -l >/dev/null || ssh-add -t $KEY_TIMEOUT; ssh"

#export SSH_ASKPASS=/usr/lib/seahorse/seahorse-ssh-askpass

export WINEARCH='win32'

alias emacs="emacs -nw"

export PATH="$HOME/.cargo/bin:$PATH"
