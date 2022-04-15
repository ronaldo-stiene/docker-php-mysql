#!/bin/bash

echo 'Changing permissions on admin home folder'
chown -R admin /home/admin/.
chgrp -R admin /home/admin/.

echo 'Fixin permission on .ssh/config file'
chmod o-rwx /home/admin/.ssh/config

echo 'Starting ssh service'
service ssh restart