FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install ansible && \
    python3 -m pip install "ansible-lint[community,yamllint]"

CMD [ "/bin/sh" ]