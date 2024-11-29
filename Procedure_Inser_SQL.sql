CREATE OR ALTER PROCEDURE SP_ADD_PROVIDER_ON_SYSTEM
(
    @ManagerId BIGINT,
    @Name varchar(100), 
    @Comments varchar(5000),
    @CPFNumber varchar(15),
    @ProviderId BIGINT,
    @Address VARCHAR(255),
    @County VARCHAR(100),
    @City VARCHAR(100),
    @State CHAR(2),
    @Country CHAR(2),
    @PostalCode VARCHAR(9),

)

AS
BEGIN 
    DECLARE @ProviderId BIGINT

    DECLARE @UserId BIGINT 

    INSERT INTO Providers
    (
        ManagerId, 
        Name, 
        ProviderClassId,
        ProviderStatusId, 
        ProviderTypeId, 
        ProviderPurposeId, 
        Comments, 
        CPFNumber, 
        CreatedAt, 
        CreatedBy, 
        ProviderOriginId
    )
    VALUES
    (
        @ManagerId,
        @Name,
	30, 
        1, 
        1,
        1,
	@Comments,
	@CPFNumber,
        1, 
        1,
        1
    )

    SET @ProviderId = SCOPE_IDENTITY()
    
  END   