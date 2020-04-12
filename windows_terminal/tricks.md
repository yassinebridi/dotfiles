# Disable VS Code's terminal beep sound
# in ~/.inputrc
set bell-style none

# Change the color of folders in terminal
# in .zshrc
LS_COLORS='ow=01;36;40'
export LS_COLORS

# Playlist Download
youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s" <playlist_link>

# USB shortcut virus fix
attrib -h -r -s /s /d H:\*.*

# When windows expire
slmgr -rearm
