#!/bin/bash

doc_dir="$1"
work_dir="$(pwd)/${doc_dir}"
docker run -p 8000:8000 -v "${work_dir}":/docs --rm -it makotow/sphinx-docker:1.3-sphinx1.7.63-sphinx1.7.63-sphinx1.7.6 sphinx-autobuild --host 0.0.0.0 source docs/_build/html
