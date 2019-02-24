SELECT
COUNT(EventName) as [Number of Events],
MAX(EventDate) as [Last date],
MIN(EventDate) as [First date]

FROM
tblEvent
