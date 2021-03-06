-- ユーザーテーブル作成
CREATE TABLE T_USER
(
USERNO INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(20),
PASSWORD VARCHAR(100),
ICON BLOB,
PROFILE TINYTEXT,
CREATETIME DATETIME
);

-- フォトテーブル作成
CREATE TABLE T_PHOTO
(
PHOTONO INT AUTO_INCREMENT PRIMARY KEY,
USERNO INT,
PATH VARCHAR(100),
CAPTION  TINYTEXT,
PREFECTURE VARCHAR(20),
CATEGOLY VARCHAR(20),
BIKE VARCHAR(20),
LOCATE CHAR(60),
CREATETIME DATETIME
);

-- コメントテーブル作成
CREATE TABLE T_COMMENT
(
COMMENTNO INT AUTO_INCREMENT PRIMARY KEY,
PHOTONO INT,
COMMENTDATA MEDIUMTEXT,
CREATETIME DATETIME
);

-- グッドテーブル作成
CREATE TABLE T_GOOD
(
GOODNO INT AUTO_INCREMENT PRIMARY KEY,
PHOTONO INT,
USERNO INT,
CREATETIME DATETIME
);