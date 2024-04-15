#! /bin/sh

export PATH="$HOME/.local/bin:${PATH}"
export PATH="$HOME/.cargo/bin:${PATH}"
# export PATH="$HOME/nvm/versions/node/v21.7.1/bin:${PATH}"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export JAVA_HOME="$HOME/java/zulu11.68.17-ca-fx-jdk11.0.21-linux_x64"
export PATH="$JAVA_HOME/bin:$PATH"
