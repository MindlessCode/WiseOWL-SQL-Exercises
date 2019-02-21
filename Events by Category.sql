SELECT
CAST(EventName as VARCHAR(50)) + '(' + 'Category ' + CAST(CategoryID as VARCHAR(10)) + ')' as 'Event (category)',
EventDate

From

tblEvent

WHERE

CountryID = 1