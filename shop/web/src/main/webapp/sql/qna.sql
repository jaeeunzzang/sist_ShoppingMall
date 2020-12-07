SELECT * FROM MEMBER;
INSERT INTO MEMBER VALUES(3,'Admin','관리자','1234','여성',SYSDATE,'SEOUL','010-1234-1234','BLACK',0,0,SYSDATE);

commit;
select * from qna;

ALTER TABLE QNA ADD STATE VARCHAR2(10); --새글답글 구분
ALTER TABLE QNA ADD Q_PNUM NUMBER(5); --부모글번호 
ALTER TABLE QNA ADD SECRET VARCHAR2(10); --비밀글여부
ALTER TABLE QNA ADD P_NO NUMBER(7); --상품번호

COMMIT;

INSERT INTO QNA VALUES(1,'문의합니다','PINK','배송은 언제오나요???',SYSDATE,'new','private',1,2);
INSERT INTO QNA VALUES(2,'문의합니다','Admin','~~sk옵니다',SYSDATE,'re','private',1,2);

CREATE SEQUENCE QNA_SEQ;
SELECT * FROM QNA WHERE Q_NO=2;
SELECT
		Q_NO,Q_TITLE,M_ID,Q_CONTENTS,TO_CHAR(Q_REGDATE,'YYYY-MM-DD
		HH:MI')Q_REGDATE,STATE,SECRET,Q_PNUM,P_FILENAME
		FROM QNA,PRODUCT
		WHERE
		QNA.P_NO=PRODUCT.P_NO;
    
SELECT * FROM REVIEW;


SELECT Q_NO,Q_TITLE,M_ID,Q_CONTENTS,TO_CHAR(Q_REGDATE,'YYYY-MM-DD')Q_REGDATE,STATE,SECRET,Q_PNUM,P_FILENAME
		FROM QNA,PRODUCT WHERE Q_NO=1 AND QNA.P_NO=PRODUCT.P_NO