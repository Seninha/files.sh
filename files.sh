#!/bin/sh
#
# files.sh
# ==============================================================================
#
# Each alias is only executed if a previous "type" command succeeds.
#
# The "type" comand succeeds only if the  argument can be interpreted as a valid
# command name for the shell.
#


# cp - Command for copy (overwriting) files
# ==============================================================================
if type rsync &> /dev/null ; then
    alias cp="rsync \
              -ahvP \
              --backup-dir=/tmp/bkp"
else
    alias cp="cp -aiv"
fi


# update - Command for copy (updating) files
# ==============================================================================
if type rsync &> /dev/null ; then
    alias update="rsync \
                  -uahvP \
                  --backup-dir=/tmp/bkp"
else
    alias update="cp -uaiv"
fi


# mv - Move files
# ==============================================================================
if type rsync &> /dev/null ; then
    alias mv="rsync \
              -uahvP \
              --backup-dir=/tmp/bkp \
              --remove-source-files"
else
    alias mv="mv -iv"
fi


# rm - Remove Files
# ==============================================================================
if type trash &> /dev/null ; then
    alias rm='trash-put'
    alias rm-restore='restore-trash'
    alias rm-list='trash-list'
    alias rm-empty='trash-empty'
    alias rm-rm='trash-rm'
else
    alias rm='rm -RiIv'
fi


# ls - List directory contents
# ==============================================================================
alias ls='ls \
          --color=auto \
          --group-directories-first \
          --quoting-style=shell \
          -Fh'
alias ll='ls -l'
alias lr='ls -R'
alias la='ls -A'
alias ld='ls -ld'
alias llr='ls -lR'
alias lla='ls -lA'
alias lra='ls -RA'
alias llra='ls -lRA'


# tree - Lists directory contents recursively in a tree view
# ==============================================================================
alias tree='tree \
    --dirsfirst \
    -CFh'

alias treedu='tree --du'


# Appendix A - The `rsync` Command
# ==============================================================================
#
# `rsync` is a fast and extraordinarily versatile file copying tool that works
# both remotely and locally. It is generally installed on most linux systems,
# but if you haven't it your distribution should have `rsync` in its
# repositories.
#
#
# Options used in this script:
#
# -u    Skyp files that are newer on destiny
#
# -a    Archive mode; copy symlinks as symlinks, run recursivelly and preserves
#       permissions, modification times, group, owner and special/device files.
#
# -h    Human redable numbers
#
# -v    Verbose mode
#
# -P    Show a progress bar and keeps partial transfered files
#
# --backup
#       Do backup in a backup directory
#
# --backup-dir
#       Specify a backup directory
#
# --remove-source-files
#       Remove copied files from source directory
#
#
# Appendix B - Options Sumary for `cp`, `mv` and `rm` Commands
# ==============================================================================
# 
# `cp`, `mv` and `rm` programs are part of coreutils, the GNU Utilities and must
# be installed in every Linux System as part of POSIX Standard.
#
#
# Options used in this script:
#
# -a    Archieve mode: preserve links, runs recursivelly and preserves mode,
#       owner, timestamp...
#
# -i    Prompt before overwrite a file
#
# -v    Verbose mode
#
#
# Appendix C - The `trash` command
# ==============================================================================
#
# `trash` is a Command-Line trash utility and is part of `trash-cli` package.
#
# `trash-cli` is a set of python programs that moves deleted files to the
# "Trash", list files in "Trash" and restore files from "Trash".
#
# `trash-cli` is disponible in the repository of most of the major Linux
# distributions, but it isn't installed by default.
#
# The following commands are provided by `trash-cli`:
#
# `trash-put`       Puts files in trash
# `restore-trash`   Restore files from trash
# `trash-list`      Lists files in trash
# `trash-empty`     Cleans the trash
# `trash-rm`        Remove permanently files from trash
#
#
# Appendix D - The `ls` command
# ==============================================================================
#
# `ls` lists directory contents. It has several options, the following are used
# in this script:
#
# --color=auto
#       Make output colorized
#       
# --group-directories-first
#       Group directories before files
#
# --quoting-style=shell
#       Use shell's quoting styles to quote file names
#
# -F    Append file indicator to entries
#
# -h    Print human redable sizes
#
# -l    Use long listing format
#
# -R    Lists subdirectories recursively
#
# -A    Shows hidden files
#
# -d    Lists the directory itself, not it entries
#
#
# Appendix E - The `tree` command
# ==============================================================================
#
# `tree` lists directory contents recursively in a tree view. It has several
# options, the following are used in this script:
#
# --dirsfirst
#       Group directories before regular files
#
# -C    Make output colorized
#
# -F    Append file indicator to entries
#
# -h    Print human redable sizes
#
# --du  Display size accumulation for every directory
#
