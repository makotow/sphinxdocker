# Sphinx Docker

*Read this in other languages: [日本語](README.ja.md)

## What is this?

Dockerized Sphinx

## Requirements

- Installed docker.

## Current features

The following features supported via utility script.

- Setup sphinx project
- Build and preview


## How to use?

Initilize sphinx directory.

```
$ docker run -v (pwd):/docs --rm -it sphinx-docker:latest sphinx-quickstart
```

Build and preview.

```Examples
$ ./build.sh
$ ./preview.sh
```

## Authors

- [@makotow](https://github.com/makotow)

## License

MIT
