drop database if exists mbti;
create database mbti;
use mbti;

drop table if exists `member`;
CREATE TABLE `member` (
	`me_id`			varchar(30) primary key,
	`me_pw`			varchar(255)	NOT NULL,
    `me_email`		varchar(50) 	NOT NULL,
	`me_fail`		int				NOT	NULL default 0,
	`me_stopdate`	datetime		NULL,
    `me_cookie`		varchar(255)	NULL,
	`me_limit`		datetime		NULL,
	`me_authority`	varchar(5)		NOT	NULL DEFAULT 'USER',
	`me_ms_name`	varchar(10)		NOT NULL
);

drop table if exists `member_state`;
CREATE TABLE `member_state` (
	`ms_name`	varchar(10) primary key
);

drop table if exists `question`;
CREATE TABLE `question` (
	`qu_num`		int primary key auto_increment,
	`qu_content`	varchar(255)	NOT	NULL,
	`qu_type`		char(2)			NOT	NULL
);

drop table if exists `discussion_room`;
CREATE TABLE `discussion_room` (
	`dr_num`	int primary key auto_increment,
	`dr_topic`	varchar(255)	NOT	NULL
);

drop table if exists `personality_type`;
CREATE TABLE `personality_type` (
	`pt_code`		char(4) primary key,
	`pt_content`	longtext	NOT NULL
);

drop table if exists `comment`;
CREATE TABLE `comment` (
	`co_num`		int primary key auto_increment,
	`co_date`		datetime		NOT	NULL default CURRENT_TIMESTAMP,
	`co_content`	varchar(255)	NOT	NULL,
	`co_me_id`		varchar(30)		NOT NULL,
	`co_dr_num`		int				NOT NULL
);

drop table if exists `test`;
CREATE TABLE `test` (
	`te_num`	int primary key auto_increment,
	`te_date`	datetime	NOT	NULL default CURRENT_TIMESTAMP,
    `te_result`	char(4)		NULL,
	`te_me_id`	varchar(30) NOT NULL
);

drop table if exists `question_answer`;
CREATE TABLE `question_answer` (
	`qa_num`	int primary key auto_increment	NOT NULL,
	`qa_answer`	int	NOT NULL,
	`qa_te_num`	int	NOT NULL,
	`qa_qu_num`	int	NOT NULL
);

ALTER TABLE `test` ADD CONSTRAINT `FK_member_TO_test_1` FOREIGN KEY (
	`te_me_id`
)
REFERENCES `member` (
	`me_id`
);

ALTER TABLE `member` ADD CONSTRAINT `FK_member_state_TO_member_1` FOREIGN KEY (
	`me_ms_name`
)
REFERENCES `member_state` (
	`ms_name`
);

ALTER TABLE `comment` ADD CONSTRAINT `FK_member_TO_comment_1` FOREIGN KEY (
	`co_me_id`
)
REFERENCES `member` (
	`me_id`
);

ALTER TABLE `comment` ADD CONSTRAINT `FK_discussion_room_TO_comment_1` FOREIGN KEY (
	`co_dr_num`
)
REFERENCES `discussion_room` (
	`dr_num`
);

ALTER TABLE `question_answer` ADD CONSTRAINT `FK_test_TO_question_answer_1` FOREIGN KEY (
	`qa_te_num`
)
REFERENCES `test` (
	`te_num`
);

ALTER TABLE `question_answer` ADD CONSTRAINT `FK_question_TO_question_answer_1` FOREIGN KEY (
	`qa_qu_num`
)
REFERENCES `question` (
	`qu_num`
);

ALTER TABLE `mbti`.`test` 
DROP FOREIGN KEY `FK_member_TO_test_1`;
ALTER TABLE `mbti`.`test` 
ADD CONSTRAINT `FK_member_TO_test_1`
  FOREIGN KEY (`te_me_id`)
  REFERENCES `mbti`.`member` (`me_id`)
  ON DELETE CASCADE;
  
ALTER TABLE `mbti`.`comment` 
DROP FOREIGN KEY `FK_discussion_room_TO_comment_1`,
DROP FOREIGN KEY `FK_member_TO_comment_1`;
ALTER TABLE `mbti`.`comment` 
ADD CONSTRAINT `FK_discussion_room_TO_comment_1`
  FOREIGN KEY (`co_dr_num`)
  REFERENCES `mbti`.`discussion_room` (`dr_num`)
  ON DELETE CASCADE,
ADD CONSTRAINT `FK_member_TO_comment_1`
  FOREIGN KEY (`co_me_id`)
  REFERENCES `mbti`.`member` (`me_id`)
  ON DELETE CASCADE;
  
  ALTER TABLE `mbti`.`question_answer` 
DROP FOREIGN KEY `FK_test_TO_question_answer_1`;
ALTER TABLE `mbti`.`question_answer` 
ADD CONSTRAINT `FK_test_TO_question_answer_1`
  FOREIGN KEY (`qa_te_num`)
  REFERENCES `mbti`.`test` (`te_num`)
  ON DELETE CASCADE;