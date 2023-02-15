DROP TABLE boardBasic;

CREATE TABLE boardBasic(
    num number CONSTRAINT boardBasic_num PRIMARY KEY,
    writer varchar2(50) not null,
    title varchar2(50) not null,
    content varchar2(100) not null,
    regdate date,
    readcount number default 0
    );

DROP SEQUENCE boardBasic_num_seq;

CREATE SEQUENCE boardBasic_num_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO boardBasic (num, writer, title, content, regdate, readcount)
VALUES(boardBasic_num_seq.nextval, '부석순','파이팅해야지','했어야지',sysdate,0);

INSERT INTO boardBasic (num, writer, title, content, regdate, readcount)
VALUES(boardBasic_num_seq.nextval, '윤하','사건의 지평선','사건의 지평선~',sysdate,0);

commit;
rollback;

select * from boardBasic;

SELECT * FROM boardBasic
WHERE num=3;

UPDATE boardBasic
SET title = '게시글수정', content='내용수정'
WHERE num=3;

DELETE FROM boardBasic
WHERE num=9;