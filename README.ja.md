# Sphinx Docker

* 他の言語で読む: [English](README.md)

## これはなに?

Sphinx をDocker化したもの。


## 前提条件

- Docker がインストールされていること。
- makeが使えること

## 現在の機能


ユーティリティスクリプトを使った次の機能を提供。

- sphinxプロジェクトのセットアップ
- sphinx のビルド、プレビュー

## 使い方

初期セットアップ後、各種コマンドを使う。


### 初期セットアップ

```
$ make init
```

### 自動ビルド＆プレビュー

```Examples
$ make auto-build-sphinx
```

起動後はファイル変更を検知自動ビルド、プレビュー

U以下の URLでプレビュー。

```
http://127.0.0.1:8000
```

### ビルドだけを死体
## Authors

- [@makotow](https://github.com/makotow)

## ライセンス

MIT
