#!/bin/bash

# Function to clone a repository and switch to the develop branch
clone_and_switch() {
    repo_url=$1
    repo_name=$(basename "$repo_url" .git)
    branch_name="develop"

    echo "Cloning repository: $repo_url"
    git clone "$repo_url" ../"$repo_name"

    echo "Switching to the '$branch_name' branch in $repo_name"
    cd ../"$repo_name" || exit
    git checkout "$branch_name"
    cd ../communi-verse-platfrom
}

# List of repositories to clone
repositories=(
    "git@github.com:salman299/communi-verse.git"
    "git@github.com:salman299/react-communi-verse.git"
)

# Loop through each repository and clone + switch to develop branch
for repo in "${repositories[@]}"; do
    clone_and_switch "$repo"
done
