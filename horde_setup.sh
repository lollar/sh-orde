#! /bin/bash
# ----------------- COMMAND LINE VARIABLE ASSIGNMENT ----------------- #
createPath=$1
if [ -z "${createPath}" ]
then
  createPath=$PWD
  echo "No directory provided. Cloning repos here: ${createPath}"
fi
# -------------------------------------------------------------------- #

# ------------------------ CLONE GIT REPOS --------------------------- #
cd "$createPath"

githubRepos=( 'horde-uic-greetings' 'horde-web-dashboard' 'horde-svc-stats' 'horde-uic-stats' )

for repo in "${githubRepos[@]}" 
do
  git clone git@github.com:acima-credit/$repo.git
done
# -------------------------------------------------------------------- #
