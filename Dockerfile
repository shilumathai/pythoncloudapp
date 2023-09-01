# start by pulling the ubuntu image
FROM ubuntu:latest

RUN apt-get install \
    apt-transport-https
RUN apt-get update -y && apt-get install libxml2 -y
RUN apt-get install libnuma-dev -y
COPY setup.sh .
RUN chmod +x ./setup.sh
RUN ./setup.sh

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app

ENV DB2HOME=/root/go/src/github.com/ibmdb/clidriver
ENV IBM_DB_HOME=/root/go/src/github.com/ibmdb/clidriver
ENV CGO_CFLAGS=-I/root/go/src/github.com/ibmdb/clidriver/include
ENV CGO_LDFLAGS=-L/root/go/src/github.com/ibmdb/clidriver/lib
ENV LD_LIBRARY_PATH=/root/go/src/github.com/ibmdb/clidriver/lib:$LD_LIBRARY_PATH
ENV PATH=/root/nodejs/bin:$PATH
RUN echo PATH
RUN npm install ibm_db
RUN go run connect.go > go-result.txt
RUN node connect.js > node-result.txt
#RUN python3 connect.py > python-result.txt
#RUN python3 emailtest.py
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
