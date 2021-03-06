#!/usr/bin/env bash

git config --global user.name "$1"
git config --global user.email "$2"

# Allow clone with github as if we know the key already.
# If this fails, GitHub has their keys compromised.
cat /home/vagrant/githubKey >> /home/vagrant/.ssh/known_hosts
rm /home/vagrant/githubKey

# INSERT THE REPOSITORIES IN A LIST (separated by a single space) HERE:
TEMPLATES="um-service-template um-pylibrary-template um-buildingblock-template "
LIBRARIES="um-common-oidc-client um-common-uma-client um-common-scim-client well-known-handler" 
SERVICES="um-pep-engine um-pdp-engine um-login-passport um-login-persistence um-user-profile"
BUILDING_BLOCKS="um-login-service"
REPOS="$TEMPLATES $LIBRARIES $SERVICES $BUILDING_BLOCKS"
for i in $REPOS;
do
    git clone "git@github.com:EOEPCA/"$i".git" /home/vagrant/$i
    cd /home/vagrant/$i && git flow init -d
    cd /home/vagrant
done
