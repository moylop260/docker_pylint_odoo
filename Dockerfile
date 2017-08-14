FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y python-pip nodejs git curl vim && \
    pip install -U pip && \
    pip install -U cli-helpers setuptools pylint==1.6.4 pylint-plugin-utils==0.2.4 pbr==3.0.0 && \
    npm install eslint
RUN git clone https://github.com/oca/pylint-odoo.git /pylint-odoo
WORKDIR /pylint-odoo
