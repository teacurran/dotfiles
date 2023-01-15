# dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# flutter
export PATH="$PATH:/Users/tea/dev/Software/flutter/bin"
export PATH="$PATH:/Users/tea/dev/Software/java/apache-maven-3.8.6/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tea/dev/Software/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tea/dev/Software/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tea/dev/Software/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tea/dev/Software/google-cloud-sdk/completion.zsh.inc'; fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# virtualenv
source virtualenvwrapper.sh

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Spaceship
source $(brew --prefix)/opt/spaceship/spaceship.zsh

alias gbd="git branch --delete"
alias gbv="git branch -v"
alias kbs="workon kbs && export AWS_PROFILE=kbs-iam && export ARTIFACTORY_USER=tcurran && export ARTIFACTORY_PASSWORD=P0pc0rns\!"
alias appi="workon appi && export AWS_PROFILE=appi"

export JAVA_HOME=/Users/tea/.sdkman/candidates/java/current/bin/java

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
