FROM apache/superset:4.1.1
USER root

RUN pip install --upgrade pip \
  && pip install trino psycopg2-binary Pillow pyhive

USER superset
