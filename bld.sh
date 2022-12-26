#!/bin/sh
REPO="495665774687.dkr.ecr.eu-north-1.amazonaws.com/backend-dev"
mvn clean package -DskipTests

aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 495665774687.dkr.ecr.eu-north-1.amazonaws.com
REPOSITORY_HOST=495665774687.dkr.ecr.eu-north-1.amazonaws.com
REPOSITORY_URI=$REPOSITORY_HOST/back-kotlin-test
echo "REPOSITORY_HOST=${REPOSITORY_HOST}"
echo "REPOSITORY_URI=${REPOSITORY_URI}"

COMMIT_HASH="abcdef"
IMAGE_TAG=build-$(echo $CODEBUILD_BUILD_ID | awk -F":" '{print $2}')
echo "IMAGE_TAG=${IMAGE_TAG}"



# docker build -t back-kotlin-test .
# docker tag back-kotlin-test:latest 495665774687.dkr.ecr.eu-north-1.amazonaws.com/back-kotlin-test:latest
# docker push 495665774687.dkr.ecr.eu-north-1.amazonaws.com/back-kotlin-test:latest
# #
# #
# ##aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin ${REPO}
# ##docker build -t back-kotlin-test .
# ##docker tag back-kotlin-test:latest ${REPO}:latest
# ##docker push ${REPO}:latest
