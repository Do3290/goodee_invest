
/* Drop Tables */

DROP TABLE community;
DROP TABLE ms;
DROP TABLE reward;
DROP TABLE support;
DROP TABLE project;
DROP TABLE userdb;
DROP TABLE visit;




/* Create Tables */

CREATE TABLE community
(
	community_num int NOT NULL,
	project_num int NOT NULL,
	community_content varchar(1000),
	community_id varchar(100),
	community_date date,
	PRIMARY KEY (community_num)
);


CREATE TABLE ms
(
	ms_num int NOT NULL,
	project_num int NOT NULL,
	ms_title varchar(100),
	-- 후원자 - 밀어주기(후원) , 결제
	-- 후원자 - 후원내역 관리, 선물 수령
	-- 창작자 - 프로젝트 올리기, 공개검토
	-- 창작자 - 프로젝트 관리, 정산, 선물 실행
	-- 일반 - 가입, 탈퇴, 계정 관리
	-- 일반 - 사용상의 불편, 버그
	-- 일반 - 기타 문의
	ms_category varchar(100),
	-- 발신한 이메일
	-- 
	id varchar(100) NOT NULL,
	rec_id varchar(100),
	ms_content varchar(1000),
	send_date date,
	ms_view int,
	PRIMARY KEY (ms_num)
);


CREATE TABLE project
(
	project_num int NOT NULL,
	id varchar(100) NOT NULL,
	category varchar(100) NOT NULL,
	summary varchar(100) NOT NULL,
	story varchar(1000) NOT NULL,
	main_image varchar(100) NOT NULL,
	banner_image varchar(100) NOT NULL,
	state varchar(100) NOT NULL,
	goal int NOT NULL,
	deadline date NOT NULL,
	project_account varchar(100) NOT NULL,
	subject varchar(100) NOT NULL,
	PRIMARY KEY (project_num)
);


CREATE TABLE reward
(
	reward_num int NOT NULL,
	project_num int NOT NULL,
	item_order int NOT NULL,
	item varchar(20) NOT NULL,
	itemcnt int NOT NULL,
	reward_goal int NOT NULL,
	reward_date date NOT NULL,
	PRIMARY KEY (reward_num)
);


CREATE TABLE support
(
	support_num int NOT NULL,
	id varchar(100) NOT NULL,
	project_num int NOT NULL,
	support_money int,
	support_address varchar(100),
	-- 0 -> 보상 절차 미완
	-- 1 -> 보상 절차 완
	-- 
	-- 
	reward_state int,
	PRIMARY KEY (support_num)
);


CREATE TABLE userdb
(
	id varchar(100) NOT NULL,
	name varchar(100) NOT NULL,
	pic varchar(100),
	gender varchar(20) NOT NULL,
	age int NOT NULL,
	story varchar(100),
	nic varchar(100),
	tel varchar(100),
	account varchar(100) NOT NULL UNIQUE,
	money int NOT NULL,
	signdate date,
	usertag int,
	PRIMARY KEY (id)
);


CREATE TABLE visit
(
	visitdate date NOT NULL,
	visitcnt int,
	PRIMARY KEY (visitdate)
);



/* Create Foreign Keys */

ALTER TABLE community
	ADD FOREIGN KEY (project_num)
	REFERENCES project (project_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ms
	ADD FOREIGN KEY (project_num)
	REFERENCES project (project_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE reward
	ADD FOREIGN KEY (project_num)
	REFERENCES project (project_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE support
	ADD FOREIGN KEY (project_num)
	REFERENCES project (project_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ms
	ADD FOREIGN KEY (id)
	REFERENCES userdb (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE project
	ADD FOREIGN KEY (id)
	REFERENCES userdb (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE support
	ADD FOREIGN KEY (id)
	REFERENCES userdb (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



