FROM apache/superset:4.1.1
USER root

RUN pip install --upgrade pip \
  && pip install trino psycopg2-binary Pillow

# COPY docker-init.sh /opt/bin/docker-init.sh
# RUN chmod +x /opt/bin/docker-init.sh
USER superset
