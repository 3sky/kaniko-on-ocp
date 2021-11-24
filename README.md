Docker Kaniko NSS Wrapper
=========================

Run Kaniko on OpenShift platform.

A Docker image that uses NSS Wrapper to modify /etc/passwd so arbitrary UIDs can run and still have a username.

This is most useful in environments such as Openshift which randomise the UID for each container.

Use the `$USER_NAME` environment variable to configure the name for the user.

``` dockerfile
FROM 3sky/kaniko-on-ubi:1.0.0

ENV USER_NAME=kaniko
```

``` bash
$ docker run -u 11112331212 kaniko-final /bin/id -u
11112331212
```

`$USER_NAME` defaults to root.

Based on:

[atbentley/docker-nss-wrapper](https://github.com/atbentley/docker-nss-wrapper)
