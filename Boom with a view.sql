CREATE VIEW vwEverything AS

SELECT

CategoryName,
ContinentName,
CountryName,
EventName,
EventDate

FROM tblEvent as E
INNER JOIN tblCategory as C
ON E.CategoryID = C.CategoryID
INNER JOIN tblCountry as CY
ON E.CountryID = CY.CountryID
INNER JOIN tblContinent as CN
ON CY.ContinentID = CN.ContinentID

SELECT 
CategoryName,
COUNT(EventName) as [NumberEvents]
FROM
vwEverything

GROUP BY
CategoryName,
ContinentName

HAVING ContinentName = 'Africa'

ORDER BY NumberEvents DESC