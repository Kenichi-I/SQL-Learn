-- Dockerコンテナ起動時の自動実行ではDBのシステムユーザで実行されるため以下のコマンドで使用するユーザの環境に合わせています。
-- プラガブルデータベースで実行するように指定します。
alter session set container = XEPDB1;
-- 実行するスキーマを指定します。
alter session set current_schema = orauser;


--
-- Dumping data for table region
--
-- ORDER BY:  id

-- SET AUTOCOMMIT OFF;
INSERT INTO region VALUES (1,'Hokkaido','北海道');
INSERT INTO region VALUES (2,'Tohoku','東北');
INSERT INTO region VALUES (3,'Kitakanto','北関東');
INSERT INTO region VALUES (4,'Minamikanto','南関東');
INSERT INTO region VALUES (5,'Tokai','東海');
INSERT INTO region VALUES (6,'Hokuriku','北陸');
INSERT INTO region VALUES (7,'Kinki','近畿');
INSERT INTO region VALUES (8,'Chugoku','中国');
INSERT INTO region VALUES (9,'Shikoku','四国');
INSERT INTO region VALUES (10,'Kyushu','九州');
INSERT INTO region VALUES (11,'Okinawa','沖縄');
commit;
-- SET AUTOCOMMIT ON;

--
-- Dumping data for table prefectures
--
-- ORDER BY:  code

-- ※ORACLEでは入力文字列内の & が置換文字列の接頭辞として使用されるので CHR(38) に置き換えている。

-- SET AUTOCOMMIT OFF;
INSERT INTO prefectures VALUES ('01','Hokkaido','北海道',5224614,2469063,83424.44);
INSERT INTO prefectures VALUES ('02','Aomori','青森県',1237984,509649,9645.64);
INSERT INTO prefectures VALUES ('03','Iwate','岩手県',1210534,490828,15275.01);
INSERT INTO prefectures VALUES ('04','Miyagi','宮城県',2301996,980549,7282.29);
INSERT INTO prefectures VALUES ('05','Akita','秋田県',959502,383531,11637.52);
INSERT INTO prefectures VALUES ('06','Yamagata','山形県',1068027,396792,9323.15);
INSERT INTO prefectures VALUES ('07','Fukushima','福島県',1833152,740089,13784.14);
INSERT INTO prefectures VALUES ('08','Ibaraki','茨城県',2867009,1181598,6097.39);
INSERT INTO prefectures VALUES ('09','Tochigi','栃木県',1933146,795449,6408.09);
INSERT INTO prefectures VALUES ('10','Gunma','群馬県',1939110,803215,6362.28);
INSERT INTO prefectures VALUES ('11','Saitama','埼玉県',7344765,3157627,3797.75);
INSERT INTO prefectures VALUES ('12','Chiba','千葉県',6284480,2767661,5157.57);
INSERT INTO prefectures VALUES ('13','Tokyo','東京都',14047594,7216650,2194.03);
INSERT INTO prefectures VALUES ('14','Kanagawa','神奈川県',9237337,4210122,2416.11);
INSERT INTO prefectures VALUES ('15','Niigata','新潟県',2201272,862796,12583.96);
INSERT INTO prefectures VALUES ('16','Toyama','富山県',1034814,403007,4247.58);
INSERT INTO prefectures VALUES ('17','Ishikawa','石川県',1132526,468835,4186.21);
INSERT INTO prefectures VALUES ('18','Fukui','福井県',766863,290692,4190.52);
INSERT INTO prefectures VALUES ('19','Yamanashi','山梨県',809974,338057,4465.27);
INSERT INTO prefectures VALUES ('20','Nagano','長野県',2048011,829979,13561.56);
INSERT INTO prefectures VALUES ('21','Gifu','岐阜県',1978742,779029,10621.29);
INSERT INTO prefectures VALUES ('22','Shizuoka','静岡県',3633202,1480969,7777.35);
INSERT INTO prefectures VALUES ('23','Aichi','愛知県',7542415,3233126,5173.07);
INSERT INTO prefectures VALUES ('24','Mie','三重県',1770254,741183,5774.49);
INSERT INTO prefectures VALUES ('25','Shiga','滋賀県',1413610,570529,4017.38);
INSERT INTO prefectures VALUES ('26','Kyoto','京都府',2578087,1188903,4612.2);
INSERT INTO prefectures VALUES ('27','Osaka','大阪府',8837685,4126995,1905.32);
INSERT INTO prefectures VALUES ('28','Hyogo','兵庫県',5465002,2399358,8401.02);
INSERT INTO prefectures VALUES ('29','Nara','奈良県',1324473,543908,3690.94);
INSERT INTO prefectures VALUES ('30','Wakayama','和歌山県',922584,393489,4724.65);
INSERT INTO prefectures VALUES ('31','Tottori','鳥取県',553407,219069,3507.14);
INSERT INTO prefectures VALUES ('32','Shimane','島根県',671126,268462,6707.89);
INSERT INTO prefectures VALUES ('33','Okayama','岡山県',1888432,799611,7114.33);
INSERT INTO prefectures VALUES ('34','Hiroshima','広島県',2799702,1241204,8479.65);
INSERT INTO prefectures VALUES ('35','Yamaguchi','山口県',1342059,597309,6112.54);
INSERT INTO prefectures VALUES ('36','Tokushima','徳島県',719559,307358,4146.75);
INSERT INTO prefectures VALUES ('37','Kagawa','香川県',950244,406062,1876.78);
INSERT INTO prefectures VALUES ('38','Ehime','愛媛県',1334841,599941,5676.19);
INSERT INTO prefectures VALUES ('39','Kochi','高知県',691527,314330,7103.63);
INSERT INTO prefectures VALUES ('40','Fukuoka','福岡県',5135214,2318479,4986.51);
INSERT INTO prefectures VALUES ('41','Saga','佐賀県',811442,311173,2440.69);
INSERT INTO prefectures VALUES ('42','Nagasaki','長崎県',1312317,556130,4130.98);
INSERT INTO prefectures VALUES ('43','Kumamoto','熊本県',1738301,716740,7409.46);
INSERT INTO prefectures VALUES ('44','Oita','大分県',1123852,487679,6340.76);
INSERT INTO prefectures VALUES ('45','Miyazaki','宮崎県',1069576,468575,7735.22);
INSERT INTO prefectures VALUES ('46','Kagoshima','鹿児島県',1588256,725855,9187.06);
INSERT INTO prefectures VALUES ('47','Okinawa','沖縄県',1467480,613294,2282.59);
commit;

--
-- Dumping data for table prefectures
--
-- ORDER BY:  code

-- SET AUTOCOMMIT OFF;
INSERT INTO prefecturalOffice VALUES ('01','Sapporo','札幌','さっぽろ');
INSERT INTO prefecturalOffice VALUES ('02','Aomori','青森','あおもり');
INSERT INTO prefecturalOffice VALUES ('03','Morioka','盛岡','もりおか');
INSERT INTO prefecturalOffice VALUES ('04','Sendai','仙台','せんだい');
INSERT INTO prefecturalOffice VALUES ('05','Akita','秋田','あきた');
INSERT INTO prefecturalOffice VALUES ('06','Yamagata','山形','やまがた');
INSERT INTO prefecturalOffice VALUES ('07','Fukushima','福島','ふくしま');
INSERT INTO prefecturalOffice VALUES ('08','Mito','水戸','みと');
INSERT INTO prefecturalOffice VALUES ('09','Utsunomiya','宇都宮','うつのみや');
INSERT INTO prefecturalOffice VALUES ('10','Maebashi','前橋','まえばし');
INSERT INTO prefecturalOffice VALUES ('11','Saitama','さいたま','さいたま');
INSERT INTO prefecturalOffice VALUES ('12','Chiba','千葉','ちば');
INSERT INTO prefecturalOffice VALUES ('13','Shinjuku','新宿','しんじゅく');
INSERT INTO prefecturalOffice VALUES ('14','Yokohama','横浜','よこはま');
INSERT INTO prefecturalOffice VALUES ('15','Niigata','新潟','にいがた');
INSERT INTO prefecturalOffice VALUES ('16','Toyama','富山','とやま');
INSERT INTO prefecturalOffice VALUES ('17','Kanazawa','金沢','かなざわ');
INSERT INTO prefecturalOffice VALUES ('18','Fukui','福井','ふくい');
INSERT INTO prefecturalOffice VALUES ('19','Kofu','甲府','こうふ');
INSERT INTO prefecturalOffice VALUES ('20','Nagano','長野','ながの');
INSERT INTO prefecturalOffice VALUES ('21','Gifu','岐阜','ぎふ');
INSERT INTO prefecturalOffice VALUES ('22','Shizuoka','静岡','しずおか');
INSERT INTO prefecturalOffice VALUES ('23','Nagoya','名古屋','なごや');
INSERT INTO prefecturalOffice VALUES ('24','Tsu','津','つ');
INSERT INTO prefecturalOffice VALUES ('25','Otsu','大津','おおつ');
INSERT INTO prefecturalOffice VALUES ('26','Kyoto','京都','きょうと');
INSERT INTO prefecturalOffice VALUES ('27','Osaka','大阪','おおさか');
INSERT INTO prefecturalOffice VALUES ('28','Kobe','神戸','こうべ');
INSERT INTO prefecturalOffice VALUES ('29','Nara','奈良','なら');
INSERT INTO prefecturalOffice VALUES ('30','Wakayama','和歌山','わかやま');
INSERT INTO prefecturalOffice VALUES ('31','Tottori','鳥取','とっとり');
INSERT INTO prefecturalOffice VALUES ('32','Matsue','松江','まつえ');
INSERT INTO prefecturalOffice VALUES ('33','Okayama','岡山','おかやま');
INSERT INTO prefecturalOffice VALUES ('34','Hiroshima','広島','ひろしま');
INSERT INTO prefecturalOffice VALUES ('35','Yamaguchi','山口','やまぐち');
INSERT INTO prefecturalOffice VALUES ('36','Tokushima','徳島','とくしま');
INSERT INTO prefecturalOffice VALUES ('37','Takamatsu','高松','たかまつ');
INSERT INTO prefecturalOffice VALUES ('38','Matsuyama','松山','まつやま');
INSERT INTO prefecturalOffice VALUES ('39','Kochi','高知','こうち');
INSERT INTO prefecturalOffice VALUES ('40','Fukuoka','福岡','ふくおか');
INSERT INTO prefecturalOffice VALUES ('41','Saga','佐賀','さが');
INSERT INTO prefecturalOffice VALUES ('42','Nagasaki','長崎','ながさき');
INSERT INTO prefecturalOffice VALUES ('43','Kumamoto','熊本','くまもと');
INSERT INTO prefecturalOffice VALUES ('44','Oita','大分','おおいた');
INSERT INTO prefecturalOffice VALUES ('45','Miyazaki','宮崎','みやざき');
INSERT INTO prefecturalOffice VALUES ('46','Kagoshima','鹿児島','かごしま');
INSERT INTO prefecturalOffice VALUES ('47','Naha','那覇','なは');
commit;
-- SET AUTOCOMMIT ON;

--
-- Dumping data for table regionGroup
--
-- ORDER BY:  id,code

-- SET AUTOCOMMIT OFF;
INSERT INTO regionGroup VALUES (1,'01');
INSERT INTO regionGroup VALUES (2,'02');
INSERT INTO regionGroup VALUES (2,'03');
INSERT INTO regionGroup VALUES (2,'04');
INSERT INTO regionGroup VALUES (2,'05');
INSERT INTO regionGroup VALUES (2,'06');
INSERT INTO regionGroup VALUES (2,'07');
INSERT INTO regionGroup VALUES (2,'15');
INSERT INTO regionGroup VALUES (3,'08');
INSERT INTO regionGroup VALUES (3,'09');
INSERT INTO regionGroup VALUES (3,'10');
INSERT INTO regionGroup VALUES (3,'19');
INSERT INTO regionGroup VALUES (3,'20');
INSERT INTO regionGroup VALUES (4,'11');
INSERT INTO regionGroup VALUES (4,'12');
INSERT INTO regionGroup VALUES (4,'13');
INSERT INTO regionGroup VALUES (4,'14');
INSERT INTO regionGroup VALUES (5,'21');
INSERT INTO regionGroup VALUES (5,'22');
INSERT INTO regionGroup VALUES (5,'23');
INSERT INTO regionGroup VALUES (5,'24');
INSERT INTO regionGroup VALUES (6,'16');
INSERT INTO regionGroup VALUES (6,'17');
INSERT INTO regionGroup VALUES (6,'18');
INSERT INTO regionGroup VALUES (7,'25');
INSERT INTO regionGroup VALUES (7,'26');
INSERT INTO regionGroup VALUES (7,'27');
INSERT INTO regionGroup VALUES (7,'28');
INSERT INTO regionGroup VALUES (7,'29');
INSERT INTO regionGroup VALUES (7,'30');
INSERT INTO regionGroup VALUES (8,'31');
INSERT INTO regionGroup VALUES (8,'32');
INSERT INTO regionGroup VALUES (8,'33');
INSERT INTO regionGroup VALUES (8,'34');
INSERT INTO regionGroup VALUES (8,'35');
INSERT INTO regionGroup VALUES (9,'36');
INSERT INTO regionGroup VALUES (9,'37');
INSERT INTO regionGroup VALUES (9,'38');
INSERT INTO regionGroup VALUES (9,'39');
INSERT INTO regionGroup VALUES (10,'40');
INSERT INTO regionGroup VALUES (10,'41');
INSERT INTO regionGroup VALUES (10,'42');
INSERT INTO regionGroup VALUES (10,'43');
INSERT INTO regionGroup VALUES (10,'44');
INSERT INTO regionGroup VALUES (10,'45');
INSERT INTO regionGroup VALUES (10,'46');
INSERT INTO regionGroup VALUES (11,'47');
commit;
-- SET AUTOCOMMIT ON;

