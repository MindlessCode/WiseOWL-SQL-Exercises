USE [WorldEvents]
GO

/****** Object:  View [dbo].[EventsByCategory]    Script Date: 2/21/2019 8:42:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[EventsByCategory]
AS
--show number of events by category

SELECT TOP (100) PERCENT 
c.CategoryName Category
, COUNT(e.EventName) AS What
FROM
tblCategory as c 
INNER JOIN tblEvent as e 
ON c.CategoryID = e.CategoryID

GROUP BY c.CategoryName

ORDER BY COUNT(e.EventName) ASC

GO


SELECT *
FROM
EventsByCategory
WHERE

What > 50