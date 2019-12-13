SELECT dbo.Property.Name, dbo.OwnerProperty.PropertyId
FROM dbo.Property
JOIN dbo.OwnerProperty
ON dbo.OwnerProperty.PropertyId = dbo.Property.Id
WHERE dbo.OwnerProperty.OwnerId = 1426