https://rbdog.github.io/banana/docs/hello/

# Hugo をインストール (e.g. macOS brew)

```
$ brew install hugo
```

# 新しい記事を書くとき

```
$ hugo new pages/xxx_yyy/page.md
```

xxx に数字
yyy に適当なタイトル

# ローカルで動かしてみる

```
$ hugo server --ignoreCache --verbose --disableFastRender
```

# ビルド

docs フォルダを削除する

```
$ hugo
```

docs フォルダが生成される

# 開発チームのアイコン

- themes/hugo-tranquilpeak-theme/static/images/team.png
