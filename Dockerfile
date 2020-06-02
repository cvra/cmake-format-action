FROM python:3.8

RUN wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 -O /bin/jq && \
    chmod +x /bin/jq

RUN pip install cmake-format==0.6.10

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
