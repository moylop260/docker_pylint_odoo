FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y python-pip nodejs npm git && \
    pip install -U pip && \
    pip install -U setuptools pylint==1.6.4 pylint-plugin-utils==0.2.4 pbr && \
    npm install eslint
RUN pip install --upgrade --pre pylint-odoo
RUN pip install --upgrade git+https://github.com/oca/pylint-odoo.git
