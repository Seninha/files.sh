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
