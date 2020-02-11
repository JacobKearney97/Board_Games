-- Add player 

USE funandgames
GO

CREATE or ALTER PROCEDURE add_newplayer 
			@first_name		VARCHAR(20)	= 'anon'
		,	@surname		VARCHAR(20)
		,	@dob			DATE
		,	@lorr			CHAR(1)			
		,	@degree			VARCHAR(100)				
		,	@university		VARCHAR(100)
		,	@home_city		VARCHAR(30)

AS

BEGIN TRY

BEGIN TRANSACTION
	INSERT INTO funandgames.dbo.player (First_Name, Surname, DOB, LorR, Degree, University, Home_City)
	VALUES		(@first_name, @surname, @dob, @lorr, @degree, @university, @home_city);

	IF @first_name IS NOT NULL
	PRINT 'Player ' + @first_name + ' ' + @surname + ' has been added successfully'
COMMIT TRANSACTION

END TRY

BEGIN CATCH 
	PRINT 'ERROR HANDLED' + ERROR_MESSAGE()
END CATCH;

GO

execute add_newplayer @first_name = 'Toby', @surname = 'Gaskell', @dob = '1996-12-05', @lorr = 'R', @degree = 'Mathematics', @university = 'University of York', @home_city = 'Manchester'