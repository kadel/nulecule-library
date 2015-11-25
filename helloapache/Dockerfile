FROM tomaskral/atomicapp:marathon-provider

MAINTAINER Aaron Weitekamp <aweiteka@redhat.com>

LABEL io.projectatomic.nulecule.providers="kubernetes,docker,marathon" \
      io.projectatomic.nulecule.specversion="0.0.2"

ADD /Nulecule /Dockerfile README.md /application-entity/
ADD /artifacts /application-entity/artifacts
