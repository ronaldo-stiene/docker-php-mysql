#!/bin/bash

echo 'Changing permissions on root folder'
chown -R root /root/.
chgrp -R root /root/.

echo 'Fixin permission on .ssh/config file'
chmod o-rwx /root/.ssh/config