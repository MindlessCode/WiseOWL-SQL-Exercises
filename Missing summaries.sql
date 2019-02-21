SELECT
ContinentName,
Summary,
ISNULL(Summary, 'No summary') as 'ISNULL',
COALESCE(Summary, 'No Summary') as 'COALESCE',
CASE
	WHEN Summary is NULL THEN 'No summary' ELSE Summary
END as 'CASE'

FROM

tblContinent
