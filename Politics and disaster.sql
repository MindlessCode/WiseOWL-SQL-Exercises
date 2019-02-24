SELECT
CategoryName,
COUNT(EventName) as [Number of Events]

FROM
tblEvent as E
INNER JOIN tblCategory as C
ON E.CategoryID = C.CategoryID

GROUP BY
CategoryName

ORDER BY
[Number of Events] DESC