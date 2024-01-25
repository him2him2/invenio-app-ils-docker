from registry.cern.ch/inveniosoftware/almalinux:latest

#run mkvirtualenv invenio-app
RUN apt-get update
RUN apt-get upgrade -y 
RUN apt-get -y install docker-compose-plugin

run mkdir invenioils
run git clone https://github.com/inveniosoftware/invenio-app-ils invenioils
run cd invenioils

run docker-compose -f docker-compose.full.yml up
