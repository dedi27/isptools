FROM isptools/probe

LABEL VERSION="1.1.2"

RUN apk add --no-cache bash bash-completion iputils && apk upgrade && \
    setcap cap_net_raw+ep /usr/bin/node

# Bundle app source
COPY . /usr/src/app

RUN adduser -D isptools && chown isptools -R /usr/src/app

USER isptools

WORKDIR /usr/src/app

EXPOSE 8000

CMD ["bash", "run.sh" ]

