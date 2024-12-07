-- Dockerコンテナ起動時の自動実行ではDBのシステムユーザで実行されるため以下のコマンドで使用するユーザの環境に合わせています。
-- プラガブルデータベースで実行するように指定します。
alter session set container = XEPDB1;
-- 実行するスキーマを指定します。
alter session set current_schema = orauser;

--
-- Host: 127.0.0.1    Database: todoufuken
-- ------------------------------------------------------
-- Server version	21c-express
--
-- Table structure for table region
--

-- テーブルの削除、必要な時に使用する（他のデータベースなら存在したら消すという命令が使えるのに・・・）
-- DROP TABLE region;

--MySQL サンプルで定義されていたenumは使用できないので代用方法で記述
CREATE TABLE region (
  id int NOT NULL,
  ename varChar(12) NOT NULL,
  wname varChar(12) NOT NULL
);

--
-- Table structure for table prefectures
--

-- テーブルの削除、必要な時に使用する（他のデータベースなら存在したら消すという命令が使えるのに・・・）
-- DROP TABLE prefectures;

CREATE TABLE prefectures (
  code char(2) NOT NULL,
  ename varChar(12) NOT NULL,
  wname varChar(12) NOT NULL,
  population int DEFAULT 0,
  household int DEFAULT 0,
  area decimal(8,2) DEFAULT 0
);

--
-- Table structure for table prefecturalOffice
--

-- テーブルの削除、必要な時に使用する（他のデータベースなら存在したら消すという命令が使えるのに・・・）
-- DROP TABLE prefecturalOffice;

CREATE TABLE prefecturalOffice (
  code char(2) NOT NULL,
  ename varChar(12) NOT NULL,
  wname varChar(12) NOT NULL,
  kana varChar(18) NOT NULL
);

--
-- Table structure for table regionGroup
--

-- テーブルの削除、必要な時に使用する（他のデータベースなら存在したら消すという命令が使えるのに・・・）
-- DROP TABLE regionGroup;

CREATE TABLE regionGroup (
  id int NOT NULL,
  code char(2) NOT NULL
);


