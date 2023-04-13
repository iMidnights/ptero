#!/bin/bash

eval docker run -d --name vaultwarden -v /vw-data/:/data/ -p 1026:1026 vaultwarden/server:latest


