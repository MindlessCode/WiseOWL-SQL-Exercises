SELECT
EventName,
EventDate as [NotFormatted],
FORMAT(EventDate, 'dd/MM/yyyy') as [usingFormat],
CONVERT(date, EventDate)
FROM
tblEvent
WHERE
YEAR(EventDate) =  '1994'