SELECT EventName,
LEN(EventName) as [Lenght of Name]
FROM tblEvent
ORDER BY LEN(EventName) 