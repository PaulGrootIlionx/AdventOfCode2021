CREATE function [dbo].[BinaryToDecimal] (@Value VARCHAR(64))
RETURNS int
begin

	DECLARE @BinPlaceVal INT = 1 -- Holds the value of the binary position
	DECLARE @BinPlaceNumber INT = LEN(@Value) -- Holds the current binary position
	DECLARE @DecValue INT = 0 -- Accumulated decimal value
	DECLARE @InvalidChar BIT = 0

	-- Move backwards along binary string
	WHILE @BinPlaceNumber > 0
	BEGIN

		-- Test for invalid characters.
		IF SUBSTRING(@VALUE, @BinPlaceNumber, 1) NOT IN ('1', '0')
		BEGIN
			SET @InvalidChar = 1
			BREAK
		END

		-- Add value of the current binary position to the decimal value.
		SET @DecValue = @DecValue + (CAST(SUBSTRING(@VALUE, @BinPlaceNumber, 1) AS INT) * 
			  @BinPlaceVal)

		-- Go to next binary place and incease the value
		SET @BinPlaceNumber = @BinPlaceNumber - 1
		SET @BinPlaceVal = @BinPlaceVal * 2

	END

	-- If invalid characters were found, return 0.
	IF @InvalidChar <> 0 SET @DecValue = 0

	-- Return final value.
	return @DecValue

end;