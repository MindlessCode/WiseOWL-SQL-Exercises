SELECT
EventName,
EventDate,
DATENAME(w, EventDate) as 'Day of the Week',
DAY(EventDate) as 'Day number'
FROM
tblEvent
WHERE
(DATENAME(w, EventDate) = 'Friday' AND DATEPART(day, Eventdate) = 13) 
OR
(DATENAME(w, EventDate) = 'Thursday' AND DATEPART(day, EventDate) = 12)
OR
(DATENAME(w, EventDate) = 'Saturday' AND DATEPART(day, EventDate) = 14)
