#!/usr/bin/env bash

repofile="Repo_list.txt"    # read repos from list
echo "================================================================"
for repo in $(cat $repofile)    # recursively update local+remote repos
do
    cd $repo

    echo "CHECKING REPO \"$PWD\" ===>"
    echo ""

    git status

    echo "================================================================"
done
