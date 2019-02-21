SELECT
Country
, KmSquared
, ROUND(KmSquared/20761, 0) as 'WalesUnits'
, (Kmsquared % 20761) as 'AreaLeftOver'
, CASE 
      WHEN 
          CAST(ROUND((KmSquared/20761), 0) as varchar(10)) < 1 
      THEN 
          'Smaller than Wales'
      ELSE 
          CAST(ROUND((KmSquared/20761), 0) as VARCHAR(10)) +  ' x '  +  ' Wales plus ' + 
          CAST( (KmSquared % 20761) as VARCHAR(10)) + ' sq. km.' 
      END as 'Wales Comparison'
FROM
CountriesByArea
Order By ABS(KmSquared - 20761)