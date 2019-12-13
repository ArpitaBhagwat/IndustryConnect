SELECT dbo.PropertyHomeValue.Id, dbo.PropertyHomeValue.PropertyId, dbo.PropertyHomeValue.Value
FROM dbo.PropertyHomeValue
WHERE dbo.PropertyHomeValue.PropertyId = 5597
OR dbo.PropertyHomeValue.PropertyId = 5637
OR dbo.PropertyHomeValue.PropertyId = 5638
AND dbo.PropertyHomeValue.HomeValueTypeId = 1