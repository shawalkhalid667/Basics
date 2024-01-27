#!/bin/bash

# Author: Shawal Khalid
# GitHub Username: shawalkhalid667
# Repository: CS6704-VT/Basics-Workshop

# Prompt 1: Find all the starred repos

# Output the list of starred repos by the specified GitHub user to starred_repos.json
echo "All starred repos by $USERNAME are stored in starred_repos.json"
./githubapi-get.sh $GITHUBTOKEN "/users/$USERNAME/starred" | grep '"name":' > starred_repos.json

echo 

# Prompt 2: Find a list of open issues for a specific repository

# Output the list of open issues in the specified GitHub repository to open_issues.json
echo "List of open issues in the $REPO repo are stored in open_issues.json"
./githubapi-get.sh $GITHUBTOKEN "/repos/$REPO/issues?state=open" | grep '"title":' > open_issues.json
