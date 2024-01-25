from registry.cern.ch/inveniosoftware/almalinux:latest

mkvirtualenv invenio-app

mkdir invenioils
git clone https://github.com/inveniosoftware/invenio-app-ils invenioils
cd invenioils

docker-compose -f docker-compose.full.yml up
