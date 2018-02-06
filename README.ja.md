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



### 初期セットアップ

```
$ docker run -v ${host_docs_directory}:/docs --rm -it sphinx-docker:latest sphinx-quickstart
```

またはユーティリティスクリプトを使用(init.sh)

- ${host_docs_directory}: dockerにマウントする、ホストOS上のドキュメントディレクトリ


```
$ ./init.sh ${host_docs_directory}
```

### ビルド/プレビュー

- ${host_docs_directory}: dockerにマウントする、ホストOS上のドキュメントディレクトリ

```Examples
$ ./build.sh ${host_docs_directory}
$ ./preview.sh ${host_docs_directory}
```

以下のURLでプレビュー確認。

```
http://127.0.0.1
```

### 自動ビルド＆プレビュー

- ${host_docs_directory}: dockerにマウントする、ホストOS上のドキュメントディレクトリ

以下のコマンドを実行後、ファイルの編集を行うと自動でビルドが行われる。

```Examples
$ ./autobuild.sh ${host_docs_directory}
```

以下の URLでプレビュー。

```
http://127.0.0.1:8000
```

## Authors

- [@makotow](https://github.com/makotow)

## ライセンス

MIT
