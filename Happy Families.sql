SELECT 
--Generates FamilyName Column

Topfamily.FamilyName [TopFamily],
ParentFamily.FamilyName [ParentFamily],
family.FamilyName [Family],

--Check if 
ISNULL(
		CASE 
			WHEN TopFamily.FamilyName IS NULL 
				THEN ''
				ELSE TopFamily.FamilyName + ' > ' 
		END + ParentFamily.FamilyName + ' > ' + Family.FamilyName 
		
		, 'All categories'
	  
	  ) as 'Family path'

FROM
tblFamily as family
LEFT JOIN tblFamily as ParentFamily
ON ParentFamily.FamilyID = Family.ParentFamilyID 
LEFT JOIN tblFamily as TopFamily
ON TopFamily.FamilyId = ParentFamily.ParentFamilyID
ORDER BY
Family.FamilyName         