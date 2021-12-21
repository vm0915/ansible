FROM alpine:3.15.0

RUN apk add --no-cache python3 py3-pip build-base python3-dev libffi-dev && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install ansible && \
    python3 -m pip install "ansible-lint[community,yamllint]"

CMD [ "/bin/sh" ]