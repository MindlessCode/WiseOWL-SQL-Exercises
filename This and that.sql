Select 
EventName,
EventDate,
CHARINDEX('this', EventDetails,1) as 'thisPosition',
CHARINDEX('that', EventDetails,1) as 'thatPosition',
CHARINDEX('that', EventDetails,1) - CHARINDEX('this', EventDetails,1) as 'Offset'
FROM
tblEvent
WHERE
CHARINDEX('that', EventDetails,1) > CHARINDEX('this', EventDetails,1) AND
CHARINDEX('that', EventDetails,1) <> 0 AND  CHARINDEX('this', EventDetails,1) <> 0