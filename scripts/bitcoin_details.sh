#!/bin/bash

SERVICE=bitcoind









STATUS=$(systemctl status $SERVICE | grep Active)

if [[ $STATUS == *" active"* ]]; then
  echo -n "OK. $STATUS"
else
  echo -n "KO. $STATUS"
fi
