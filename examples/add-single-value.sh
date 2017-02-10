#!/bin/bash

set -e

HOST=http://localhost:8086
DB=sensors
TIME=$(date +%s) 
INTERVAL=30	 # interval between points [seconds]

function insert {
    local value=$1
    local time=$2
    curl -i -XPOST "$HOST/write?db=$DB" --data-binary "temperature,node=sensor1,location=x,unit=Celcius value=$value ${time}000000000"
}


curl -POST $HOST/query --data-urlencode "q=CREATE DATABASE $DB"

timestamp=$((TIME - (INTERVAL * i)))
temperature=$1
echo $timestamp - $temperature
insert $temperature $timestamp
