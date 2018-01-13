#!/bin/bash

doc_dir="$1"
work_dir="$(pwd)/${doc_dir}"
docker run -p 80:80 -v "${work_dir}"/build/html:/usr/share/nginx/html:ro --rm -d nginx:alpine
