#!/bin/bash

/script/cpu.sh &

nginx -g 'daemon off;'
