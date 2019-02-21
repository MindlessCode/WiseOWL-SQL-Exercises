SELECT 
*
FROM

tblEvent

WHERE

CategoryID <> 14 AND EventDetails like '%train%'


SELECT 
*
FROM

tblEvent

WHERE

CountryID = 13 AND EventName NOT LIKE '%Space%' AND EventDetails NOT LIKE '%space%'


SELECT 
*
FROM

tblEvent

WHERE

CategoryID in (5,6) AND EventDetails NOT LIKE '%war%'AND EventDetails NOT LIKE '%death%'