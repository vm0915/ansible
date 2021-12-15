FROM python:3.11.0a3-slim

RUN apt update && \
    apt-get install -y build-essential libffi-dev git && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install ansible && \
    python3 -m pip install "ansible-lint[community,yamllint]"

CMD [ "ansible-lint" ]