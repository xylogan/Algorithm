# SELECT * FROM ECOLI_DATA as A LEFT JOIN (SELECT year(DIFFERENTIATION_DATE) as YEAR, MAX(SIZE_OF_COLONY) FROM ECOLI_DATA GROUP BY YEAR) as B ON A.ID=B.ID;

SELECT year(ECOLI_DATA.DIFFERENTIATION_DATE) as YEAR,SUB_QUERY.MAX-ECOLI_DATA.SIZE_OF_COLONY as YEAR_DEV,ID FROM ECOLI_DATA LEFT JOIN (SELECT year(DIFFERENTIATION_DATE) as YEAR, MAX(SIZE_OF_COLONY) as MAX FROM ECOLI_DATA GROUP BY YEAR) as SUB_QUERY ON year(ECOLI_DATA.DIFFERENTIATION_DATE)=SUB_QUERY.YEAR ORDER BY YEAR,YEAR_DEV;