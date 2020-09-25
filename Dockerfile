FROM isptools/probe

#ENV DNSSERVERS "XXX.XXX.XXX.XXX,XXX.XXX.XXX.XXX"

RUN apk update && apk --no-cache upgrade && apk add --no-cache bash

# Bundle app source
COPY . /usr/src/app

EXPOSE 8000

CMD ["bash", "run.sh" ]

