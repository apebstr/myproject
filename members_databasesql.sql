DROP TABLE membersBasic;

CREATE TABLE membersBasic(
    memId varchar2(10) not null,
    memPw varchar2(20) not null,
    memName varchar2(30) not null,
    memType number(1) default 1,   -- 관리자0, 일반회원1
    memJoinDate date,
    constraint writer primary key(memId)
    );

INSERT INTO membersBasic (memId, memPw, memName, memType, memJoinDate)
VALUES('mrboo','boo1234567','부승관',1,sysdate);

INSERT INTO membersBasic (memId, memPw, memName, memType, memJoinDate)
VALUES('suk','suk123','이석민',1, sysdate);

select * from membersBasic;

commit;


rollback;

SELECT * FROM membersBasic
WHERE num=3;

UPDATE membersBasic
SET title = '게시글수정', content='내용수정'
WHERE num=3;

DELETE FROM membersBasic
WHERE num=9;