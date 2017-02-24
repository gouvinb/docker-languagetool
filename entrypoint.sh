#!/usr/bin/env bash
set -x

if [ $1 == "server" ]; then
  java -cp languagetool-server.jar org.languagetool.server.HTTPServer --port $PORT --public
elif [ $1 == "cli" ]; then
  java -jar languagetool-commandline.jar ${@:2}
else
  echo "usage: [DOCKER_CMD] serve/cli ... args"
  exit 1
fi
