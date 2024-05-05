FROM ubuntu:24.04

COPY fan_control /usr/local/bin
COPY requirements.txt /tmp/

RUN apt update  &&  apt install -y python3-pip \
                &&  pip install  --no-cache-dir -r /tmp/requirements.txt  --break-system-packages

WORKDIR /usr/local/bin
CMD ["python3", "-u", "fan_control"]
