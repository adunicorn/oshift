MASTER=192.168.1.64
MINION1=192.168.1.48
MINION2=192.168.1.81
UI=192.168.1.84

yum install -y \
        git \
        emacs \
        bind bind-utils \
        ansible


cp named.conf /etc/named.conf
cp forward.adunicorn /etc/named
cp reverse.adunicorn /etc/named

systemctl enable named
systemctl start named

firewall-cmd --permanent --add-port=53/tcp
firewall-cmd --permanent --add-port=53/udp
firewall-cmd --reload

chgrp named -R /var/named
chown -v root:named /etc/named.conf
restorecon -rv /var/named
restorecon /etc/named.conf

systemctl stop NetworkManager
cp resolv.conf /etc/resolv.conf


if [ ! -e "/root/.ssh/id_rsa" ]; then
    ssh-keygen -N "" -f /root/.ssh/id_rsa
fi

ssh-copy-id root@minion1.adunicorn.local
ssh-copy-id root@minion2.adunicorn.local
ssh-copy-id root@master.adunicorn.local


