set -e 

MASTER=192.168.1.81
MINION1=192.168.1.82
MINION2=192.168.1.83
UI=192.168.1.80

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
    echo -e "\n\nSkippping resolv.conf: DNS is statically and manually configured on master"
#cp resolv.conf /etc/resolv.conf


if [ ! -e "/root/.ssh/id_rsa" ]; then
    ssh-keygen -N "" -f /root/.ssh/id_rsa
fi


ssh-copy-id root@master.adunicorn.local

hostname master.adunicorn.local


echo -e "\n\n**************** Configuring hostnames on nodes"

for SERVER in minion1 minion2
do
    ssh-copy-id root@${SERVER}.adunicorn.local
    ssh root@${SERVER} "hostname ${SERVER}.adunicorn.local"
    ssh root@${SERVER} "systemctl stop NetworkManager"

    echo -e "\n\nSkippping resolv.conf: DNS is statically and manually configured on each minion"
#    scp /etc/resolv.conf root@${SERVER}:/etc/resolv.conf
done

echo "Done. You can run ./setup-cluster.sh now and have a beer"
