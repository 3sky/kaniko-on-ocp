FROM ubikaniko:latest

ENV USER_NAME=root NSS_WRAPPER_PASSWD=/tmp/passwd NSS_WRAPPER_GROUP=/tmp/group

RUN /bin/touch ${NSS_WRAPPER_PASSWD} ${NSS_WRAPPER_GROUP} && \
/bin/chgrp 0 ${NSS_WRAPPER_PASSWD} ${NSS_WRAPPER_GROUP} && \
/bin/chmod g+rw ${NSS_WRAPPER_PASSWD} ${NSS_WRAPPER_GROUP}

ADD passwd.template /passwd.template
ADD nss_wrapper.sh /nss_wrapper.sh

ENTRYPOINT ["/bin/sh", "/nss_wrapper.sh"]
