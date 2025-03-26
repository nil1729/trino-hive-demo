FROM apache/superset:4.1.2
USER root

RUN pip install --upgrade pip \
  && pip install trino psycopg2-binary Pillow pyhive thrift thrift_sasl flask_cors

USER superset
