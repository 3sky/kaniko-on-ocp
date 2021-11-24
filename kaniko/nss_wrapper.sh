
#!/bin/bash

# $NSS_WRAPPER_PASSWD and $NSS_WRAPPER_GROUP have been set by the Dockerfile
export USER_ID=$(/bin/id -u)
export GROUP_ID=$(/bin/id -g)
/bin/envsubst < /passwd.template > ${NSS_WRAPPER_PASSWD}
export LD_PRELOAD=/usr/lib/libnss_wrapper.so

exec $@
