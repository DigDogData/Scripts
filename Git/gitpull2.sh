#!/usr/bin/env bash

repofile="Repo_list.txt"    # read repos from list
echo "================================================================"
for repo in $(cat $repofile)    # recursively pull repos
do
    cd $repo

    echo "PULLING REPO \"$PWD\" ===>"
    echo ""

    git pull

    echo "================================================================"
done
