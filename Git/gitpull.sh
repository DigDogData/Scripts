#!/usr/bin/env bash

read -p "Sure you want to pull repos? " response

if [ response -eq "yes" || response -eq "y" ]; then

    repofile="Repo_list.txt"    # read repos from list
    echo "================================================================"
    for repo in $(cat $repofile)    # recursively update local+remote repos
    do
        cd $repo

        echo "PULLING REPO \"$PWD\" ===>"
        echo ""

        git pull

        echo "================================================================"
    done
else
    echo "Exiting..."
fi
