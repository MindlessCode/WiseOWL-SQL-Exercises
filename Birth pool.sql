SELECT
EventName,
EventDate,
DATEDIFF(day, '1994/06/29', EventDate) as [Days offset],
ABS(DATEDIFF(day, '1994/06/29', EventDate)) as [Days difference]
FROM
tblEvent
ORDER BY
[Days difference]
