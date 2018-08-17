#!/bin/bash

doc_dir="$1"
work_dir="$(pwd)/${doc_dir}"
docker run -v "${work_dir}":/docs --rm -it makotow/sphinx-docker:1.3-sphinx1.7.6 sphinx-quickstart
