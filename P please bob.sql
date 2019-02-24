SELECT
UPPER(LEFT(CategoryName, 1)) as [Category initial],
COUNT(EventName) as [Number of Events],
CAST(
     AVG(
		CAST(
			LEN(EventName) as DECIMAL(4,2)
			)
		) as DECIMAL(4,2)
	 ) as [Average event name lenght]

FROM

tblEvent as E
INNER JOIN tblCategory as C
ON E.CategoryID = C.CategoryID

GROUP BY CategoryName