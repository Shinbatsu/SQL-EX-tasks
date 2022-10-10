SELECT
    FORMAT(date, 'yyyy-MM'),
    DATEDIFF(WEEK, DATEADD(DAY,-(1+1)%7, FORMAT(date, 'yyyy-MM')+'-01'),
    DATEADD(DAY,-(1+1)%7, DATEADD(MONTH,1, FORMAT(date, 'yyyy-MM')+'-01')))
    ,DATEDIFF(WEEK, DATEADD(DAY,-(2+1)%7, FORMAT(date, 'yyyy-MM')+'-01'),
    DATEADD(DAY,-(2+1)%7, DATEADD(MONTH,1, FORMAT(date, 'yyyy-MM')+'-01')))
    ,DATEDIFF(WEEK, DATEADD(DAY,-(3+1)%7, FORMAT(date, 'yyyy-MM')+'-01'),
    DATEADD(DAY,-(3+1)%7, DATEADD(MONTH,1, FORMAT(date, 'yyyy-MM')+'-01')))
    ,DATEDIFF(WEEK, DATEADD(DAY,-(4+1)%7, FORMAT(date, 'yyyy-MM')+'-01'),
    DATEADD(DAY,-(4+1)%7, DATEADD(MONTH,1, FORMAT(date, 'yyyy-MM')+'-01')))
    ,DATEDIFF(WEEK, DATEADD(DAY,-(5+1)%7, FORMAT(date, 'yyyy-MM')+'-01'),
    DATEADD(DAY,-(5+1)%7, DATEADD(MONTH,1, FORMAT(date, 'yyyy-MM')+'-01')))
    ,DATEDIFF(WEEK, DATEADD(DAY,-(6+1)%7, FORMAT(date, 'yyyy-MM')+'-01'),
    DATEADD(DAY,-(6+1)%7, DATEADD(MONTH,1, FORMAT(date, 'yyyy-MM')+'-01')))
    ,DATEDIFF(WEEK, DATEADD(DAY,-(7+1)%7, FORMAT(date, 'yyyy-MM')+'-01'),
    DATEADD(DAY,-(7+1)%7, DATEADD(MONTH,1, FORMAT(date, 'yyyy-MM')+'-01')))
FROM
    Battles
GROUP BY 
    FORMAT(date, 'yyyy-MM')





    