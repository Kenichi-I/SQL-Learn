-- SET search_path = postgres;
--
-- Host: 127.0.0.1    Database: todoufuken
-- ------------------------------------------------------
--
-- Table structure for table region
--

-- テーブルの削除、必要な時に使用する
-- DROP TABLE IF EXISTS region;

--MySQL サンプルで定義されていたenumは使用できないので代用方法で記述
CREATE TABLE region (
  id int NOT NULL,
  ename varChar(12) NOT NULL,
  wname varChar(12) NOT NULL
);

--
-- Table structure for table prefectures
--

-- テーブルの削除、必要な時に使用する
-- DROP TABLE IF EXISTS prefectures;

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

-- テーブルの削除、必要な時に使用する
-- DROP TABLE IF EXISTS prefecturalOffice;

CREATE TABLE prefecturalOffice (
  code char(2) NOT NULL,
  ename varChar(12) NOT NULL,
  wname varChar(12) NOT NULL,
  kana varChar(18) NOT NULL
);

--
-- Table structure for table regionGroup
--

-- テーブルの削除、必要な時に使用する
-- DROP TABLE IF EXISTS regionGroup;

CREATE TABLE regionGroup (
  id int NOT NULL,
  code char(2) NOT NULL
);


