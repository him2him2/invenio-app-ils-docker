from registry.cern.ch/inveniosoftware/almalinux:latest

#run mkvirtualenv invenio-app
RUN yum update -y
#RUN apt-get upgrade -y 

run yum install -y yum-utils
run dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

RUN dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

#systemctl start docker
#systemctl enable docker

run mkdir invenioils
run git clone https://github.com/inveniosoftware/invenio-app-ils invenioils
run cd invenioils

run docker-compose -f docker-compose.full.yml up
