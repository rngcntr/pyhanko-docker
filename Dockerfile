FROM python:alpine3.16

RUN apk update && \
    apk add g++

WORKDIR /pyhanko

ADD requirements.txt /pyhanko/
ADD pyhanko.yaml /pyhanko/

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

USER 1000:1000

ENTRYPOINT [ "pyhanko" ]