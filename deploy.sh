REGISTRY="sgtcoder"
PROJECT_NAME="dnsmasq"

docker build  -t $REGISTRY/$PROJECT_NAME .
docker push $REGISTRY/$PROJECT_NAME

