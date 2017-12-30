# Sphinx Docker

* 他の言語で読む: [English](README.md)

## これはなに?

Sphinx をDocker化したもの。


## 前提条件

Docker がインストールされていること。

## 現在の機能


ユーティリティスクリプトを使った次の機能を提供。

- sphinxプロジェクトのセットアップ
- sphinx のビルド、プレビュー

## 使い方

初期セットアップ後、各種コマンドを使う。



初期セットアップ実施

```
$ docker run -v (pwd):/docs --rm -it sphinx-docker:latest sphinx-quickstart
```

ビルドしてプレビュー。

```Examples
$ ./build.sh
$ ./preview.sh
```

## Authors

- [@makotow](https://github.com/makotow)

## ライセンス

MIT
