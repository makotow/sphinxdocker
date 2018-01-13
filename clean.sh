#!/bin/bash

doc_dir="$1"
work_dir="$(pwd)/${doc_dir}"
docker run -v "${work_dir}":/docs --rm -it sphinx-docker:latest make clean
