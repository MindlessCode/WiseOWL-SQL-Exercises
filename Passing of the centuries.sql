SELECT
1+(YEAR(EventDate)-1)/100 as [Century],
COUNT(EventName)

FROM 
tblEvent

GROUP BY CUBE(
1+(YEAR(EventDate)-1)/100)

ORDER BY
Century