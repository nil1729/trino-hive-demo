FROM apache/superset:4.1.1
USER root

RUN pip install --upgrade pip
RUN pip install trino

COPY docker-init.sh /opt/bin/docker-init.sh
RUN chmod +x /opt/bin/docker-init.sh
USER superset
