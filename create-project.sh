set -e

#eval $(minishift docker-env)
OPENSHIFT_CONSOLE=master.adunicorn.local:8443
oc login ${OPENSHIFT_CONSOLE} -u admin -p OriginAdmin
#docker login -u admin -p $(oc whoami -t) $(minishift openshift registry)


PROJECT_NAME=issuing
echo "\n\n\n** Creating the project ${PROJECT_NAME}.."
oc new-project ${PROJECT_NAME}
oc project issuing

echo "\n\n\n** Pushing images in the registry.."

#REGISTRY=$(minishift openshift registry)
#echo "  registry=${REGISTRY}"

#docker login -u admin -p $(oc whoami -t) ${REGISTRY}

#docker pull adunicorn/issuing:latest
#docker tag adunicorn/issuing:latest ${REGISTRY}/issuing/issuing:latest
#docker push  ${REGISTRY}/issuing/issuing:latest

#docker pull luiscoms/openshift-rabbitmq:3.6.5-management
#docker tag luiscoms/openshift-rabbitmq:3.6.5-management ${REGISTRY}/issuing/rabbitmq:latest
#docker push ${REGISTRY}/issuing/rabbitmq:latest


echo "\n\n\n** Creating OpenShift resources from exports.."
oc create -f openshift-templates/redis-ephemeral-template.json

## Issuing
oc create -f openshift-resources/issuing-imagestream.yml
oc create -f openshift-resources/issuing-deployment-config.yml
oc create -f openshift-resources/issuing-service.yml
oc create -f openshift-resources/issuing-route.yml

## RabbitMQ
#oc create -f openshift-resources/rabbitmq-imagestream.yml
#oc create -f openshift-resources/rabbitmq-deployment-config.yml
#oc create -f openshift-resources/rabbitmq-service.yml
#oc create -f openshift-resources/rabbitmq-route.yml

## Redis
#oc create -f openshift-resources/redis-deployment-config.yml
#oc create -f openshift-resources/redis-service.yml
#oc create -f openshift-resources/redis-secret.yml


echo "\n\n\n** Deploying..."
oc deploy redis
oc deploy issuing
oc deploy rabbitmq
