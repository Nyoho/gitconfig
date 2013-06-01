#!/bin/sh

HOME_GITCONFIG=~/.gitconfig

if [ -e "${HOME_GITCONFIG}" ] || [ -L "${HOME_GITCONFIG}" ]; then
    echo "${HOME_GITCONFIG} already exists.  Nothing was done."
else
    echo "Making the symbolic link to \"${HOME_GITCONFIG}\" ..."
    ln -s "${PWD}/dot.gitconfig" ~/.gitconfig
    echo "Done."
fi
