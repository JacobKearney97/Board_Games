create database board_game

use board_game

select * from games;
select * from players;
select * from plays;


select *, case
when winrate*avg_players > 1
then 'strong' 
when winrate*avg_players < 1
then 'pussy'
else 'average' 
end performance from
(
select pr.first_name as name, cast((sum(win)/count(playid)) as decimal(3,2)) as winrate, count(playid) as played, cast(avg(players) as decimal(3,2)) as avg_players
from players as pr inner join plays as p
on pr.playerid = p.playerid 
group by pr.first_name


)t

order by winrate desc;

select * from players 



insert into players(Playerid ,	First_name,	Surname,	DOB	,gender	,LorR	,Degree,	University,	[Home City])
values('10', 'Tahmid', 'Wadud', '02.07.98', 'M', 'L', 'Mathematics' , 'ICl', 'London') ;
