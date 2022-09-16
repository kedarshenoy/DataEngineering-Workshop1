

		
FROM python:3.10.2-alpine3.15
RUN apk update
RUN apk add postgresql
RUN chown postgres:postgres/run/postgresql
 
RUN mkdir -p /root/workspace/src
COPY ./main.py  /root/workspace/src
WORKDIR /root/workspace/src
RUN python main.py


