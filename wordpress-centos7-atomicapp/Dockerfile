FROM projectatomic/atomicapp:0.4.0

MAINTAINER Christoph Görn <goern@redhat.com>

LABEL io.projectatomic.nulecule.specversion="0.0.2" \
      io.projectatomic.nulecule.providers="kubernetes, openshift, docker" \
      Build="docker build --rm --tag test/wordpress-centos7-atomicapp ."

ADD /Nulecule /Dockerfile README.md gpl-3.0.txt /application-entity/
ADD /artifacts /application-entity/artifacts
