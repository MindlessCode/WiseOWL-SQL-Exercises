SELECT
EventName,
CASE
	WHEN LEFT(EventName, 1) = RIGHT(EventName, 1) 
		THEN 'Same letter'
	WHEN (LEFT(EventName, 1) = 'a'  OR LEFT(EventName, 1) = 'e' OR LEFT(EventName, 1) = 'i' OR LEFT(EventName, 1) = 'o' OR LEFT(EventName, 1) = 'u') AND (RIGHT(EventName, 1) = 'a' OR RIGHT(EventName, 1) = 'e' OR RIGHT(EventName, 1) = 'i' OR RIGHT(EventName, 1) = 'o' OR RIGHT(EventName, 1) = 'u') 
		THEN 'Begins and ends with vowel' 
		
	END as 'Verdict' 


FROM
tblEvent
WHERE (CASE
	WHEN LEFT(EventName, 1) = RIGHT(EventName, 1) 
		THEN 'Same letter'
	WHEN (LEFT(EventName, 1) = 'a'  OR LEFT(EventName, 1) = 'e' OR LEFT(EventName, 1) = 'i' OR LEFT(EventName, 1) = 'o' OR LEFT(EventName, 1) = 'u') AND (RIGHT(EventName, 1) = 'a' OR RIGHT(EventName, 1) = 'e' OR RIGHT(EventName, 1) = 'i' OR RIGHT(EventName, 1) = 'o' OR RIGHT(EventName, 1) = 'u') 
		THEN 'Begins and ends with vowel' 
		
	END ) IS NOT NULL

ORDER BY
EventDate
