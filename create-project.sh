set -e

OPENSHIFT_CONSOLE=https://192.168.64.2:8443
oc login ${OPENSHIFT_CONSOLE} -u admin -p admin

echo "\n\n\n** Creating the project.."
###################################################oc new-project issuing
oc project issuing

echo "\n\n\n** Pushing images in the registry.."

REGISTRY=$(minishift openshift registry)
echo "  registry=${REGISTRY}"

docker login -u admin -p $(oc whoami -t) ${REGISTRY}

docker pull adunicorn/issuing:latest
docker tag adunicorn/issuing:latest ${REGISTRY}/issuing/issuing:latest
docker push  ${REGISTRY}/issuing/issuing:latest

docker pull luiscoms/openshift-rabbitmq:3.6.5-management
docker tag luiscoms/openshift-rabbitmq:3.6.5-management ${REGISTRY}/issuing/rabbitmq:latest
docker push ${REGISTRY}/issuing/rabbitmq:latest


echo "\n\n\n** Creating OpenShift resources from exports.."
oc create -f openshift-templates/redis-ephemeral-template.json

#oc create -f openshift-resources/imagestream-rabbitmq.yml
#oc create -f openshift-resources/imagestream-issuing.yml

oc create -f openshift-resources/deployment-config-issuing.yml
oc create -f openshift-resources/deployment-config-rabbitmq.yml
oc create -f openshift-resources/deployment-config-redis.yml

oc create -f openshift-resources/service-issuing.yml
oc create -f openshift-resources/service-rabbitmq.yml
oc create -f openshift-resources/service-redis.yml

oc create -f openshift-resources/route-rabbitmq.yml
oc create -f openshift-resources/route-issuing.yml

oc create -f openshift-resources/secret-redis.yml


echo "\n\n\n** Deploying..."
oc deploy redis
oc deploy issuing
oc deploy rabbitmq
