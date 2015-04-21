export HOMEBREW_GITHUB_API_TOKEN=cb55e2c522e8fa9183b07c0e7039f14448c20c2f

export PATH="$HOME/.bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.npm_modules/bin"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if which jenv > /dev/null; then eval "$(jenv init -)"; fi