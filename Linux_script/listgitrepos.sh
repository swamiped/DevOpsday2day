#!/bin/bash


############################################################################
#
# Author: Swami
# Date: 08/02/2025
#
# This Script is useful for the listing the repos in the github user account
#
############################################################################


# export USERNAME="username"
# export ACCESSTOKEN="accesstoken"
# curl -L \
#   -H "Accept: application/vnd.github+json" \
#   -H "Authorization: Bearer ${ACCESSTOKEN}" \
#   -H "X-GitHub-Api-Version: 2022-11-28" \
#   https://api.github.com/${USERNAME}/repos

  

# curl -s -H "Authorization: Bearer ${ACCESSTOKEN}" "https://api.github.com/users/${USERNAME}/repos"

curl -L -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $ACCESSTOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" https://api.github.com/user/repos | jq .[].name
  

curl -s -H "Accept: application/vnd.github+json" -H "Authorization: Bearer ${ACCESSTOKEN}"  "https://api.github.com/users/${USERNAME}/repos" | jq .[].name >> Repositories.txt
cat repositories.txt 