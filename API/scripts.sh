#!/bin/bash

# Author: Your Name
# Description: Query GitHub API to get commit messages for a specific repository.

# Usage: ./get_repo_commits.sh <GitHubToken> <Username> <RepositoryName>

TOKEN=$1
USERNAME=$2
REPO_NAME=$3

# Query GitHub API for commit messages in the repository
./githubapi-get.sh $TOKEN "/repos/shawalkhalid667/Omniscient-Debugger-In-Python/commits" | grep '"message":' > repo_commits.json

echo "Commit messages collected and saved to repo_commits.json"

#!/bin/bash

# Author: Your Name
# Description: Query GitHub API to get a list of contributors for a specific repository.

# Usage: ./get_repo_contributors.sh <GitHubToken> <Username> <RepositoryName>

TOKEN=$1
USERNAME=$2
REPO_NAME=$3

# Query GitHub API for contributors in the repository
./githubapi-get.sh $TOKEN "/repos/shawalkhalid667/Omniscient-Debugger-In-Python/contributors" | grep '"login":' > repo_contributors.json

echo "List of contributors collected and saved to repo_contributors.json"