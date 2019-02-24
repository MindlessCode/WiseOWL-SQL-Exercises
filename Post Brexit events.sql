SELECT
ContinentName,
CountryName,
COUNT(EventName) as [Number of Events]

FROM
tblEvent as E
INNER JOIN tblCountry as C
ON E.CountryID = C.CountryID
INNER JOIN tblContinent as CN
ON CN.ContinentID = C.ContinentID


GROUP BY
ContinentName,
CountryName

HAVING ContinentName <> 'Europe' AND COUNT(EventName) > 5