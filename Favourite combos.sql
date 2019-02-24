SELECT
AuthorName,
DoctorName,
COUNT(Title) as Episodes

FROM

tblEpisode as E
INNER JOIN tblAuthor as A
ON E.AuthorID = A.AuthorID
INNER JOIN tblDoctor as D
ON E.DoctorId = D.DoctorID

GROUP BY
AuthorName,
DoctorName

Having COUNT(Title) > 5

ORDER BY Episodes DESC