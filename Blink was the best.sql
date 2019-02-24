SELECT 
 AuthorName,
 Count(Title) Episodes,
 MIN(EpisodeDate) as [Earliest Date],
 MAX(EpisodeDate) as [Latest Date]
 

FROM
tblEpisode as E
INNER JOIN tblAuthor as A
ON E.AuthorID = A.AuthorID 

GROUP BY
AuthorName,
E.AuthorID

ORDER BY Episodes DESC
