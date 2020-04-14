#!/bin/sh

if [ -z $1 ]; then
  echo 'É NECESSÁRIO INFORMAR UM DIRETÓRIO PARA MAPEAR.'
  exit 0
fi

docker run --name samba \
  -ti --rm \
  --network=host \
  -v $1:/mnt \
  mckatoo/samba \
  sh
