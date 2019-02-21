SELECT

EventName as What, 
EventDate as [When]

FROM

tblEvent

WHERE

MONTH(EventDate) = 2 AND YEAR(EventDate) = 2005