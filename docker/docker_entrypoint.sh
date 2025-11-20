#!/bin/sh

cd /home/static

wget -O datasets.xlsx https://github.com/jh-bertram/TrioSphere/raw/refs/heads/main/datasets.xlsx

exec thttpd -D -h 0.0.0.0 -p 3000 -d /home/static -u static -l - -M 60
