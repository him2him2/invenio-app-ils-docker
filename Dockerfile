from registry.cern.ch/inveniosoftware/almalinux:latest

run mkvirtualenv invenio-app

run mkdir invenioils
run git clone https://github.com/inveniosoftware/invenio-app-ils invenioils
run cd invenioils

run docker-compose -f docker-compose.full.yml up
