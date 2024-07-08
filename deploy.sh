#!/bin/bash/
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u karthick2 -p karthick07
    docker tag test karthick2/dev
    docker push karthick2/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u karthick2 -p karthick07
    docker tag test karthick2/prod 
    docker push karthick2/prod
fi
