ARG PYTHON_IMAGE=noop
FROM $PYTHON_IMAGE

ARG VERSION=0
ARG SPHINX_VERSION=0
ARG CONTAINER_PORT=0
ARG CONTAINER_WORK_DIR=/path/to/docs

LABEL version=$VERSION \
      python-iamge=$PYTHON_IMAGE \
      sphinx-version=$SPHINX_VERSION \
      container-port=$CONTAINER_PORT 

RUN apk add --update --no-cache make \
&& pip install --upgrade pip && pip install sphinx==$SPHINX_VERSION sphinx_rtd_theme sphinx-autobuild

RUN mkdir $CONTAINER_WORK_DIR
WORKDIR $CONTAINER_WORK_DIR
EXPOSE $CONTAINER_PORT

CMD ["make", "html"]
