WORKDIR=`mktemp -d`
git clone git@github.com:openshift/openshift-ansible.git ${WORKDIR}

ansible-playbook \
    -i myinventory \
    ${WORKDIR}/playbooks/byo/config.yml

rm -fr ${WORKDIR}
