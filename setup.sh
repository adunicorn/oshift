set -e 

CONTROLLER=192.168.1.60
MAC=192.168.1.80
MASTER=192.168.1.81
MINION1=192.168.1.82
MINION2=192.168.1.83

CONTROLLER_HOSTNAME=controller.adunicorn.local
MAC_HOSTNAME=mac.adunicorn.local
MASTER_HOSTNAME=master.adunicorn.local
MINION1_HOSTNAME=minion1.adunicorn.local
MINION2_HOSTNAME=minion2.adunicorn.local

NODES="${MASTER} ${MINION1} ${MINION2}"
ALL_NODES="${MAC} ${CONTROLLER} ${NODES}"
NODES_HOSTNAMES="${MASTER_HOSTNAME} ${MINION1_HOSTNAME} ${MINION2_HOSTNAME}"
ALL_NODES_HOSTNAMES="${MAC_HOSTNAME} ${CONTROLLER_HOSTNAME} ${NODES_HOSTNAMES}"

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'


function check_ping {
  if ping -c 1 $1 &> /dev/null
  then
      echo -e ${GREEN}$1 can be reached${NC}
  else
      echo -e ${RED}$1 cannot be reached${NC}
      exit -1
  fi
}


function check_ping_all {
    for node in $1
    do
	check_ping ${node}
    done
}

echo -e "\n\n**************** Checking that all servers respond"

check_ping_all "${ALL_NODES}"


echo -e "\n\n**************** Installing software"

yum install -y \
        epel-release

yum install -y \
        git \
        emacs \
        bind bind-utils \
        ansible


echo -e "\n\n**************** Configuring DNS"

cp named.conf /etc/named.conf
cp forward.adunicorn /etc/named
cp reverse.adunicorn /etc/named

systemctl enable named
systemctl start named


echo -e "\n\n**************** Configuring firewall"

systemctl restart firewalld
systemctl unmask firewalld
firewall-cmd --permanent --add-port=53/tcp
firewall-cmd --permanent --add-port=53/udp
firewall-cmd --reload

chgrp named -R /var/named
chown -v root:named /etc/named.conf
restorecon -rv /var/named
restorecon /etc/named.conf

systemctl stop NetworkManager
cp resolv.conf /etc/resolv.conf


echo -e "\n\n**************** Checking DNS works on Controller"

check_ping_all "${ALL_NODES_HOSTNAMES}"


echo -e "\n\n**************** Creating root's ssh keys on Controller"
if [ ! -e "/root/.ssh/id_rsa" ]; then
    ssh-keygen -N "" -f /root/.ssh/id_rsa
fi

echo -e "\n\n**************** Configuring hostnames and authenticasions on nodes"

for node in ${NODES_HOSTNAMES}
do
    echo -e "\n*** Configuring ${node}"
    ssh-copy-id root@${node}
    ssh root@${node} "hostname ${node}"
    ssh root@${node} "systemctl stop NetworkManager"
    scp /etc/resolv.conf root@${node}:/etc/resolv.conf
done

echo -e "\n\n**************** Checking that DNS works on all nodes"



echo -e "\n\n**************** Checking that DNS works on all nodes"

for node in ${NODES_HOSTNAMES}
do
    echo -e "\n*** Checking DNS on ${node}"
    for target in ${ALL_NODES_HOSTNAMES}
    do
	ssh root@${node} -a "if ping -c 1 ${target} &> /dev/null; then echo -e '${GREEN}${target} can be reached${NC}'; else echo -e '${RED}${target} cannot be reached${NC}'; fi"

    done
done

echo -e "${GREEN}Done. You can run ./setup-cluster.sh now and have a beer.${NC}"
