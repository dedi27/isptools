#!/bin/bash
if ! [ -z "$DNSSERVERS" ]
then
  arr=(${DNSSERVERS//,/ })
  sed -i -e "s/'xxx.xxx.xxx.xxx', 'xxx.xxx.xxx.xxx'/\"${arr[0]}\", \"${arr[1]}\"/" app.js
else
  sed -ri -e "s/^dns.setServers.*//" app.js
fi
pm2-docker app2.js
