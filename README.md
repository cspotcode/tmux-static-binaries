Build script to create static binary of tmux

Not sure if static binaries of tmux are truly usable anywhere, since I think they still dynamically link against terminfo database from system's libc, so system still needs correct version of libc installed.
