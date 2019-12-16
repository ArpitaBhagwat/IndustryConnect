-- property names, current tenants first and last names and rental payments per week/ fortnight/month for the properties in question a). 
-- 5597, 5637, 5638

SELECT dbo.Property.Name, dbo.Person.FirstName, dbo.Person.LastName, dbo.TenantProperty.PaymentAmount, dbo.TenantPaymentFrequencies.Code AS PaymentFrequency
FROM dbo.Property
INNER JOIN TenantProperty
ON dbo.Property.Id = dbo.TenantProperty.PropertyId
INNER JOIN dbo.Tenant
ON dbo.Tenant.Id = dbo.TenantProperty.TenantId
INNER JOIN dbo.Person
ON dbo.Person.Id =  dbo.Tenant.Id
INNER JOIN dbo.TenantPaymentFrequencies
ON dbo.TenantPaymentFrequencies.Id = dbo.TenantProperty.PaymentFrequencyId
WHERE dbo.Property.Id = 5597
OR dbo.Property.Id = 5637
OR dbo.Property.Id = 5638
AND dbo.Tenant.IsActive = 'True'
