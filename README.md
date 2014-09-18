files.sh
================================================================================

`files.sh` is a small script compatible for bash, zsh and sh and also a zsh plugin
installable by antigen.

`files.sh` provides tools that replace commands that works with files and
directories management (as cp, mk, rm). These commands:
    - Work both on files and directories
    - Are verbose (tell you what they are doing)
    - Are fast and create a backup (only if you have `rsync` installed)


## Features

`files.sh` provides the following commands:

     Command | Description
-------------|--------------------------------------------------------------------------
        `cp` | Copy a file/dir. This command is an alias for `rsync` command
    `update` | Copy a file/dir only if it is newer than the one in the destiny directory
        `mv` | Move a file/dir. This command is an alias for `rsync` command
        `rm` | Move a file/dir to trash. This command is an alias for `trash`
`rm-restore` | Restore a file from trash. This command is an alias for `trash`
   `rm-list` | Lists files in trash. This command is an alias for `trash`
  `rm-empty` | Cleans the trash. This command is an alias for `trash`
     `rm-rm` | Remove permanently files from trash. This command is an alias for `trash`


## Installation

Pre-installation
:   You must have the `trash-cli` and `rsync` packages installed

Manual installation
:   Just include the script in your `.zshrc`, `.bashrc` or `.shrc`:
        
        source files.sh

Automatic Installation
:   If you use *zsh* and *antigen*, add the following line to your `.zshrc`:

        antigen bundle Seninha/files.sh


## Copyright

This script is placed in Public Domain.
