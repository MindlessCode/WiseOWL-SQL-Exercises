SELECT

EventName,
EventDetails,
EventDate

FROM

tblEvent

WHERE

(CountryID IN (8, 22, 30, 35) OR
EventDetails LIKE '% water %' OR
CategoryID = 4) AND Year(EventDate) >= 1970
