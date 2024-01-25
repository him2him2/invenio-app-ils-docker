from registry.cern.ch/inveniosoftware/almalinux:latest

#run mkvirtualenv invenio-app
RUN yum update -y
#RUN apt-get upgrade -y 

#run yum install -y yum-utils
#run dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

Run dnf remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
run dnf remove podman
run dnf update
run dnf install dnf-plugins-core
run dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
run dnf install docker-ce docker-ce-cli containerd.io

run systemctl start docker
run systemctl enable docker

run mkdir invenioils
run git clone https://github.com/inveniosoftware/invenio-app-ils invenioils
run cd invenioils

run docker-compose -f docker-compose.full.yml up
