SELECT 

MAX(YEAR(EpisodeDate)) as [Episode Year]
, EnemyName
, COUNT(Title) as [Number of Episodes]

FROM

tblEpisode as E
INNER JOIN tblEpisodeEnemy as EE
ON E.EpisodeID = EE.EpisodeID
INNER JOIN tblEnemy as En
ON En.EnemyID = EE.EnemyID
INNER JOIN tblDoctor as D
ON D.DoctorID = E.DoctorID

GROUP BY

EnemyName,
BirthDate

HAVING BirthDate < '1970-01-01' and COUNT(Title) > 1

ORDER BY
[Episode Year]
, [Number of Episodes] DESC
