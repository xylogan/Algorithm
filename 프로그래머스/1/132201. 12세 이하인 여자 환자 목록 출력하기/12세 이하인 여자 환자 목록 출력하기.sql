SELECT 
    PT_NAME, PT_NO, GEND_CD, AGE, CASE
        WHEN ISNULL(TLNO) THEN "NONE"
        ELSE TLNO
    END as TLNO
FROM PATIENT WHERE AGE <= 12 and GEND_CD = 'W' ORDER BY AGE DESC, PT_NAME ASC;