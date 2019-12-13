SELECT dbo.TenantProperty.PropertyId, dbo.TenantProperty.PaymentAmount, dbo.TenantPaymentFrequencies.Name, dbo.TenantProperty.StartDate, dbo.TenantProperty.EndDate,
DATEDIFF (Week, dbo.TenantProperty.StartDate, dbo.TenantProperty.EndDate)* dbo.TenantProperty.PaymentAmount AS TotalAmount
FROM dbo.TenantProperty 
INNER JOIN dbo.TenantPaymentFrequencies
ON dbo.TenantProperty.PaymentFrequencyId = dbo.TenantPaymentFrequencies.Id
WHERE dbo.TenantProperty.PropertyId = 5597
UNION
SELECT dbo.TenantProperty.PropertyId, dbo.TenantProperty.PaymentAmount, dbo.TenantPaymentFrequencies.Name, dbo.TenantProperty.StartDate, dbo.TenantProperty.EndDate,
DATEDIFF (Week, dbo.TenantProperty.StartDate, dbo.TenantProperty.EndDate)* dbo.TenantProperty.PaymentAmount/2 AS TotalAmount
FROM dbo.TenantProperty 
INNER JOIN dbo.TenantPaymentFrequencies
ON dbo.TenantProperty.PaymentFrequencyId = dbo.TenantPaymentFrequencies.Id
WHERE dbo.TenantProperty.PropertyId = 5637
UNION
SELECT dbo.TenantProperty.PropertyId, dbo.TenantProperty.PaymentAmount, dbo.TenantPaymentFrequencies.Name, dbo.TenantProperty.StartDate, dbo.TenantProperty.EndDate,
DATEDIFF (Month, dbo.TenantProperty.StartDate, dbo.TenantProperty.EndDate)* dbo.TenantProperty.PaymentAmount AS TotalAmount
FROM dbo.TenantProperty 
INNER JOIN dbo.TenantPaymentFrequencies
ON dbo.TenantProperty.PaymentFrequencyId = dbo.TenantPaymentFrequencies.Id
WHERE dbo.TenantProperty.PropertyId = 5638
