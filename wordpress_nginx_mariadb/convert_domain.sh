#!/bin/bash
ls *db-e.gz >/dev/null 2>&1
if [ $? -ne 0 ]; then
    gzip -d *.gz
    sed -i -e 's|https://to-min.net|https://localhost|g' *-db
    rm *-db-e
    gzip *-db
fi