#!/bin/bash

# Author: ShawalKhalid
# Description: Query GitHub API to get commit messages for a specific repository.

TOKEN=$1
USERNAME=$2
REPO_NAME=$3

# Query GitHub API for commit messages in the repository
./githubapi-get.sh $TOKEN "/repos/shawalkhalid667/Omniscient-Debugger-In-Python/commits" | grep '"message":' > repo_commits.json

echo "Commit messages collected and saved to repo_commits.json"


# Usage: ./get_repo_contributors.sh <GitHubToken> <Username> <RepositoryName>


# Query GitHub API for contributors in the repository
./githubapi-get.sh $TOKEN "/repos/shawalkhalid667/Omniscient-Debugger-In-Python/contributors" | grep '"login":' > repo_contributors.json

echo "List of contributors collected and saved to repo_contributors.json"
