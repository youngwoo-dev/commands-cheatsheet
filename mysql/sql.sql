스키마 다 보여줌
show databases;

테이블 다 보여줌
show tables;

테이블 만들어질때 환경
show create table product_group;

desc 이름

Insert into test (attr1) values (3);

Select attr1 from test
Update test set attr1=4;

Lock wait 은 50초

Start transaction;
Select * from test where test_id = 1 for update; 하면 다른 트랜색션에서 같은 select...for update 문으로 접근이불가능하다.

* transaction 아닌상태에서 forshare, forupdate 하는건 무의미
for share 일때
그냥 가능
-for share 가능
-for update 불가

for update 일때
그냥 가능
-for share 불가
-for update 불가

SHOW ENGINE INNODB STATUS;

인덱스
CREATE INDEX idxUsedNickname ON coupon ( usedNickname );
ALTER TABLE books ADD INDEX idx_test ( writer );
ALTER TABLE coupon DROP INDEX idxCouponId;
SHOW INDEX FROM user;

칼럼
ALTER TABLE product_item DROP COLUMN current_sell_price;
ALTER TABLE test ADD test_int INT [ FIRST | AFTER column_name ];


기존 테이블에 updatedAt, createdAt 생성
ALTER TABLE category ADD COLUMN `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `category`;
ALTER TABLE category ADD COLUMN `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP AFTER `createdAt`;

기존 테이블에 updatedAt, createdAt 업데이트
ALTER TABLE user MODIFY createdAt datetime NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE user MODIFY updatedAt datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER USER 'admin'@'%' IDENTIFIED BY '';
FLUSH PRIVILEGES;


SHOW VARIABLES LIKE "%max_connections%";
set global max_connections=200;
show status like 'Max_used_connections';
SHOW VARIABLES LIKE 'wait_timeout';


