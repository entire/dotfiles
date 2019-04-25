export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
source /opt/ros/melodic/setup.sh
export ROSCONSOLE_FORMAT='[${node}] [${severity}] [${time}]: ${message}'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH=$PATH:~/.jx/bin
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:/home/kosuke/stlink/build/Release/_install/usr/local/bin
export PATH="$PATH:~/.local/bin/"
