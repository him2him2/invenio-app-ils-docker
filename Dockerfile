from registry.cern.ch/inveniosoftware/almalinux:latest

#run mkvirtualenv invenio-app
run apt update; apt upgrade
run apt install docker-compose-plugin
run mkdir invenioils
run git clone https://github.com/inveniosoftware/invenio-app-ils invenioils
run cd invenioils

run docker-compose -f docker-compose.full.yml up
