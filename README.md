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


### Initialize document

Initilize sphinx directory.

```
$ docker run -v ${host_docs_directory}:/docs --rm -it sphinx-docker:latest sphinx-quickstart
```

or

using utility script which is init.sh.

- ${host_docs_directory}: Host os document directory.


```
$ ./init.sh ${host_docs_directory}
```

### Build and preview.

- ${host_docs_directory}: Host os document directory.

```Examples
$ ./build.sh ${host_docs_directory}
$ ./preview.sh ${host_docs_directory}
```

Show preview following URL.

```
http://127.0.0.1
```


## Authors

- [@makotow](https://github.com/makotow)

## License

MIT
