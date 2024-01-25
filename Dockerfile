from registry.cern.ch/inveniosoftware/almalinux:latest

#run mkvirtualenv invenio-app
RUN yum update -y
#RUN apt-get upgrade -y 

run yum install -y yum-utils
run yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo

RUN yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

run mkdir invenioils
run git clone https://github.com/inveniosoftware/invenio-app-ils invenioils
run cd invenioils

run docker-compose -f docker-compose.full.yml up
