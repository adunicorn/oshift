set -e

oc login -u admin # -p OriginAdmin

PROJECT_NAME=issuing
echo "\n\n\n** Creating the project ${PROJECT_NAME}.."
oc new-project ${PROJECT_NAME}
oc project issuing

echo "\n\n\n** Importing the docker images"
oc import-image redis --from=docker.io/bitnami/redis --confirm
oc import-image issuing --from=docker.io/adunicorn/issuing --confirm
oc import-image rabbitmq --from=docker.io/luiscoms/openshift-rabbitmq --confirm



echo "\n\n\n** Creating OpenShift resources from exports.."
#oc create -f openshift-templates/redis-ephemeral-template.json

## Redis
oc create -f openshift-resources/redis-master-deployment-config.yml
oc create -f openshift-resources/redis-master-service.yml

oc create -f openshift-resources/redis-slave-deployment-config.yml
oc create -f openshift-resources/redis-slave-service.yml

## Issuing
oc create -f openshift-resources/issuing-deployment-config.yml
oc create -f openshift-resources/issuing-service.yml
oc create -f openshift-resources/issuing-route.yml

## RabbitMQ
oc create -f openshift-resources/rabbitmq-deployment-config.yml
oc create -f openshift-resources/rabbitmq-service.yml
oc create -f openshift-resources/rabbitmq-route.yml


echo "\n\n\n** Deploying..."
oc deploy redis-master
oc deploy redis-slave
oc deploy issuing
oc deploy rabbitmq
