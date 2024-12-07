--------------------------------------------------
-- プラガブル・データベース用ユーザの定義
--------------------------------------------------
-- このファイルはデータベースのシステム定義ファイルと
-- この環境で利用者が作成するファイルを区別するために
-- プラガブル・データベースを使用するときの専用ユーザを
-- 定義しています。
-- パスワードは27行目に定義しています。
--------------------------------------------------

-- プラガブル・データベースを使用する設定
alter session set container = XEPDB1;

-- 以下のコメント部分はテーブルスペースを指定して使用するときの定義です。
-- テーブルスペースを指定しない場合はUSERSが使用されます。
--テーブルスペース作成
-- CREATE TABLESPACE TEST 
-- DATAFILE '/opt/oracle/oradata/XE/XEPDB1/test.dbf' SIZE 100M 
-- SEGMENT SPACE MANAGEMENT AUTO;

--テンポラリスペース作成
-- CREATE TEMPORARY TABLESPACE TESTTEMP 
-- TEMPFILE '/opt/oracle/oradata/XE/XEPDB1/testTemp.dbf' SIZE 100M 
-- AUTOEXTEND ON;

--ユーザー作成（'by'の右の文字がパスワード）
CREATE USER orauser IDENTIFIED by Passw0rd
--CREATE USER orauser IDENTIFIED by pa55word
-- default tablespace TEST 
-- temporary tablespace TESTTEMP
;

--権限付与（作成したユーザに対しての設定です。）
grant connect to orauser;
grant resource to orauser;
grant dba to orauser;

-- テーブルスペースとスキーマを設定します。
-- スキーマはユーザ用に生成されたものを使用する設定です。
alter session set tablespace = USERS;
alter session set current_schema = orauser;
