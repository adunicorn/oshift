oc export deploymentconfig issuing -o yaml > openshift-resources/deployment-config-issuing.yml
oc export deploymentconfig rabbitmq -o yaml > openshift-resources/deployment-config-rabbitmq.yml
oc export deploymentconfig redis -o yaml > openshift-resources/deployment-config-redis.yml

oc export service issuing -o yaml > openshift-resources/service-issuing.yml
oc export service rabbitmq -o yaml > openshift-resources/service-rabbitmq.yml
oc export service redis -o yaml > openshift-resources/service-redis.yml

oc export route rabbitmq.192.168.64.2.nip.io -o yaml > openshift-resources/route-rabbitmq.yml
oc export route issuing.192.168.64.2.nip.io -o yaml > openshift-resources/route-issuing.yml

oc export imagestream rabbitmq -o yaml > openshift-resources/imagestream-rabbitmq.yml
oc export imagestream issuing -o yaml > openshift-resources/imagestream-issuing.yml

oc export secret redis -o yaml > openshift-resources/secret-redis.yml
