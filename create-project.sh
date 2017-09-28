set -e

OPENSHIFT_CONSOLE=https://192.168.64.2:8443
oc login ${OPENSHIFT_CONSOLE} -u admin -p admin


oc new-project issuing

docker login -u admin -p $(oc whoami -t) $(minishift openshift registry)

docker pull adunicorn/issuing:latest
docker tag adunicorn/issuing:latest $(minishift openshift registry)/issuing/issuing:latest
docker push  $(minishift openshift registry)/issuing/issuing:latest

docker pull luiscoms/openshift-rabbitmq:3.6.5-management
docker tag luiscoms/openshift-rabbitmq:3.6.5-management $(minishift openshift registry)/issuing/rabbitmq:latest
docker push  $(minishift openshift registry)/issuing/rabbitmq:latest

#oc create -f openshift-templates/redis-ephemeral-template.json

oc create -f openshift-resources/imagestream-rabbitmq.yml
oc create -f openshift-resources/imagestream-issuing.yml

oc create -f openshift-resources/deployment-config-issuing.yml
oc create -f openshift-resources/deployment-config-rabbitmq.yml
oc create -f openshift-resources/deployment-config-redis.yml

oc create -f openshift-resources/service-issuing.yml
oc create -f openshift-resources/service-rabbitmq.yml
oc create -f openshift-resources/service-redis.yml

oc create -f openshift-resources/route-rabbitmq.yml
oc create -f openshift-resources/route-issuing.yml

oc deploy redis
oc deploy issuing
oc deploy rabbitmq
