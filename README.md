# Minimalist DOSBox launcher

Assumes a base dir with the following layout:

    base_dir
        game1/
        game1.conf
        game1.desktop
        game1.png
        game2/
        game2.conf
        game2.desktop
        game2.png

Here is an example.

This is `game1.desktop`:

    [Desktop Entry]
    Type=Application
    Name=User Readable name
    Exec=dblaunch game1
    Icon=dblaunch-game1
    Categories=Game;

`game1.conf` is a DOSBox config file:

    [sdl]
    fullscreen=true

    [autoexec]
    mount c .
    # Change keyboard
    keyb fr
    # Other things like mounting disks here
    # imgmount d: game1/cd/game1.cue -t iso
    c:
    cd game1
    game1
    exit

`game1.png` must be a square image, at least 128x128.

# Install

First, if you don't have it,install DOSBox.

The install the tools:

    make install

Create the config file:

    mkdir -p ~/.config/dblaunch
    echo "DOS_BASE_DIR=PATH_TO_DOS_BASE_DIR" > ~/.config/dblaunch/dblaunch.conf

Whenever you change .desktop or .png:

    dblaunch-create-launchers

# License

BSD
