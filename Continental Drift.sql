SELECT
CountryName,
CASE
	WHEN ContinentID in (1,3) THEN 'Eurasia'
	WHEN ContinentID in (5,6) THEN 'Americas'
	WHEN ContinentID in (2,4) THEN 'Somewhere hot'
	WHEN ContinentID in (7) THEN 'Somewhere cold'
	Else 'Somewhere else'
END as CountryLocation
FROM
tblCountry
ORDER By CountryLocation DESC