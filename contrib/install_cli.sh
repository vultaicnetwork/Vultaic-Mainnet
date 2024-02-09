 #!/usr/bin/env bash

 # Execute this file to install the vlc cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%Vlc-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/Vlc-Qt.app/Contents/MacOS/vlcd /usr/local/bin/vlcd
 sudo ln -s ${LOCATION}/Vlc-Qt.app/Contents/MacOS/vlc-cli /usr/local/bin/vlc-cli
