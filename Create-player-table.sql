-- Creating player table 
use funandgames
go

create table game(	
		gameID	int				not null	identity	primary key,
		First_Name	varchar(20)		not null,
		Surname		varchar(20)		null,
		DOB			date			null,
		LorR		char(1)			null,
		Degree		varchar(100)	null,				
		University	varchar(100)	null,
		Home_City	varchar(30)		null
		)

