FROM isptools/probe

ENV DNS1 189.45.192.3
ENV DNS2 177.200.200.20

# Bundle app source
COPY . /usr/src/app

EXPOSE 8000

CMD [ "pm2-docker", "app.js" ]

