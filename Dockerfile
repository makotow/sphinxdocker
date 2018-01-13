FROM python:3.6-alpine3.7

RUN apk add --update --no-cache \
make \
&& pip install \
sphinx \
sphinx_rtd_theme \
sphinx-autobuild

RUN mkdir /docs/
WORKDIR /docs/

CMD ["make", "html"]
