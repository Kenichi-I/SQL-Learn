# 実行するDockerイメージの指定
# 次の行の数字部分に実行したいVersionに設定する（Version14以降の動作を確認済み）
FROM postgres:17

# 日本語を使用可能にする
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8

# 使用するPostgreSQL設定ファイルをイメージ内にコピーする。
# （使用するバージョンの設定のみ有効にする。→準備中）

# Enviroment タイムゾーンや言語の設定を有効にすると動作しないので今後の課題
# Time Zone
ENV TZ Asia/Tokyo

# Language
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
# ログなどを日本語で表示させるときの設定、英語で実行したいときは使用しない
# ENV LC_ALL ja_JP.UTF-8
# ログを英語にしたいときはこの設定（この設定を有効にするときは1行上の設定をコメントにする）
ENV LC_MESSAGES C

# PostgreSQL用ユーザの設定
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
# ENV POSTGRES_INITDB_ARGS "--encoding=UTF-8 --locale=C"

#ポートを開ける
EXPOSE 5432
