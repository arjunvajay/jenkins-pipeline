#!/bin/bash
echo "-----------------------------------"
echo "-------------Pushing Image---------"
echo "-----------------------------------"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u arjunvajay -p $PASS

echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG arjunvajay/$IMAGE:$BUILD_TAG

echo "*** Pushing image ***"
docker push arjunvajay/$IMAGE:$BUILD_TAG