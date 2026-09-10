#!/bin/sh

npm run start &
SERVER_PID=$!

sleep 10

npm run build
BUILD_STATUS=$?

if [ $BUILD_STATUS -ne 0 ]; then
  kill $SERVER_PID
  exit $BUILD_STATUS
fi

wait $SERVER_PID