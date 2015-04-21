DEFAULT_USER=prashanth

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias serve='python -m SimpleHTTPServer 9000'
alias brewperms='sudo chown -R "$USER":admin /usr/local'
alias reload='source ~/.zshenv && source ~/.zshrc'

eval "$(hub alias -s)"

source ~/Code/git/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle tarruda/zsh-autosuggestions

antigen bundle robbyrussell/oh-my-zsh plugins/ruby
antigen bundle robbyrussell/oh-my-zsh plugins/autojump

antigen theme agnoster
antigen apply
