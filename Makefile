# bumpup version here.
VERSION            := 1.4
PYTHON_IMAGE       := python:3.7.2-alpine3.9
SPHINX_VERSION     := 1.8.4
USER               := makotow
# container image name and repository information
IMAGE_NAME         := sphinx-docker
TAG                := $(VERSION)-sphinx$(SPHINX_VERSION)
REGISTRY           := $(USER)/$(IMAGE_NAME)
CONTAINER_PORT     := 8000
CONTAINER_WORK_DIR := /docs/

# sphinx specific variable
DOC_DIR            := docs
WORK_DIR           := $(CURDIR)/$(DOC_DIR)

# sphinx autobuild parameters
SRC_DIR            := source
OUTPUT_DIR         := docs/_build/html
PORT               := 8000

## Shortcuts
bi: build-image
pi: push-image
i: init
ab: auto-build-sphinx
b: build-sphinx
c: clean

## docker image build & push
.PHONY: build-image
build-image:
	docker build \
	--build-arg VERSION=$(VERSION) \
	--build-arg PYTHON_IMAGE=$(PYTHON_IMAGE) \
	--build-arg SPHINX_VERSION=$(SPHINX_VERSION) \
	--build-arg CONTAINER_PORT=$(CONTAINER_PORT) \
	--build-arg CONTAINER_WORK_DIR=$(CONTAINER_WORK_DIR) \
	-t $(REGISTRY):$(TAG) .

.PHONY: push-image
push-image:
	docker push \
	$(REGISTRY):$(TAG) 

## for sphinx operation
.PHONY: init
init:
	docker run \
	-v "$(WORK_DIR)":$(CONTAINER_WORK_DIR) \
	--rm -it \
	$(REGISTRY):$(TAG) \
	sphinx-quickstart
	
.PHONY: auto-build-sphinx
auto-build-sphinx:
	docker run -p $(PORT):$(CONTAINER_PORT) \
	-v "$(WORK_DIR)":$(CONTAINER_WORK_DIR) \
	--rm -it \
	$(REGISTRY):$(TAG) \
	 sphinx-autobuild --host 0.0.0.0 $(SRC_DIR) $(OUTPUT_DIR)

### Dockerfile default command is build
.PHONY: build-sphinx
build-sphinx:
	docker run \
	-v "$(WORK_DIR)":$(CONTAINER_WORK_DIR) \
	--rm -it \
	$(REGISTRY):$(TAG)

.PHONY: clean
clean: 
	docker run \
	-v "$(WORK_DIR)":$(CONTAINER_WORK_DIR) \
	--rm -it \
	$(REGISTRY):$(TAG) \
	make clean
