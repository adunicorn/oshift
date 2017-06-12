ansible -i myinventory nodes -a 'echo Can be reached'

ansible -i myinventory nodes -a 'ping master -c 1'

ansible -i myinventory nodes -a 'ping www.google.com -c 1'
