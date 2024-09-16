SELECT CAR_ID, CAR_TYPE, ROUND(FEE) AS FEE
  FROM 
(SELECT C.CAR_ID, C.CAR_TYPE, C.DAILY_FEE*30*(1-P.DISCOUNT_RATE*0.01) AS FEE
  FROM CAR_RENTAL_COMPANY_CAR AS C,
       CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS P
 WHERE C.CAR_ID NOT IN (SELECT CAR_ID 
                          FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                         WHERE DATE_FORMAT(START_DATE,'%Y%m%d')<='20221130'
                           AND DATE_FORMAT(END_DATE,'%Y%m%d')>='20221101')
   AND C.CAR_TYPE IN ('SUV','세단')
   AND C.CAR_TYPE=P.CAR_TYPE
   AND P.DURATION_TYPE='30일 이상') AS A
 WHERE FEE>=500000 
   AND FEE<2000000
 ORDER BY FEE DESC, CAR_TYPE ASC, CAR_ID DESC