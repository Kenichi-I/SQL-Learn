# 実行するDockerイメージの指定
# 起動するイメージの指定と使用するMySQL設定ファイルをイメージ内にコピーする。
# （使用するバージョンの設定のみ有効にする。）
# MySQL8 を使用する指定
FROM mysql:8.4
# MySQL8 以降を使用する設定
ADD ./my8.cnf /etc/mysql/conf.d/my.cnf
# MySQL5.7 を使用する設定
# FROM mysql:5.7
# ADD ./my57.cnf /etc/mysql/conf.d/my.cnf

ENV MYSQL_ROOT_PASSWORD dbpass
ENV MYSQL_DATABASE todoufuken
# 課題 root以外のユーザをなるべく使用したい
# ENV MYSQL_USER guest
# ENV MYSQL_PASSWORD dbguest

#ポートを開ける
EXPOSE 3306

#docker runに実行される
CMD ["mysqld"]