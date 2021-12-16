set nocount on;

create table #input (
	AutoID int identity
	,Timer int
	);

--insert into #input (Timer) values (3),(4),(3),(1),(2);
insert into #input (Timer) values (1),(1),(1),(2),(1),(5),(1),(1),(2),(1),(4),(1),(4),(1),(1),(1),(1),(1),(1),(4),(1),(1),(1),(1),(4),(1),(1),(5),(1),(3),(1),(2),(1),(1),(1),(2),(1),(1),(1),(4),(1),(1),(3),(1),(5),(1),(1),(1),(1),(3),(5),(5),(2),(1),(1),(1),(2),(1),(1),(1),(1),(1),(1),(1),(1),(5),(4),(1),(1),(1),(1),(1),(3),(1),(1),(2),(4),(4),(1),(1),(1),(1),(1),(1),(3),(1),(1),(1),(1),(5),(1),(3),(1),(5),(1),(2),(1),(1),(5),(1),(1),(1),(5),(3),(3),(1),(4),(1),(3),(1),(3),(1),(1),(1),(1),(3),(1),(4),(1),(1),(1),(1),(1),(2),(1),(1),(1),(4),(2),(1),(1),(5),(1),(1),(1),(2),(1),(1),(1),(1),(1),(1),(1),(1),(2),(1),(1),(1),(1),(1),(5),(1),(1),(1),(1),(3),(1),(1),(1),(1),(1),(3),(4),(1),(2),(1),(3),(2),(1),(1),(2),(1),(1),(1),(1),(4),(1),(1),(1),(1),(4),(1),(1),(1),(1),(1),(2),(1),(1),(4),(1),(1),(1),(5),(3),(2),(2),(1),(1),(3),(1),(5),(1),(5),(1),(1),(1),(1),(1),(5),(1),(4),(1),(2),(1),(1),(1),(1),(2),(1),(3),(1),(1),(1),(1),(1),(1),(2),(1),(1),(1),(3),(1),(4),(3),(1),(4),(1),(3),(2),(1),(1),(1),(1),(1),(3),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(2),(1),(5),(1),(1),(1),(1),(2),(1),(1),(1),(3),(5),(1),(1),(1),(1),(5),(1),(1),(2),(1),(2),(4),(2),(2),(1),(1),(1),(5),(2),(1),(1),(5),(1),(1),(1),(1),(5),(1),(1),(1),(2),(1);

--create table to keep track of all the fish
create table #fish (
	[Timer] int primary key,[Counts] bigint not null default 0
);

--create output table
create table #output (
	[Day] int
	,[Counts] bigint
);

--Fill initial fish into the fish table with startvalues
insert into #fish values (0,0),(1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0);
--update with input values
update f
	set Counts = upd.Counts
from #fish f
join
	(select
		Timer, count(*) as Counts
	from #input
	group by
		Timer) upd
	on f.Timer = upd.Timer;

declare @report nvarchar(4000);
declare @day int = 1;
declare @endday int = 256;
declare @fishtobeborn bigint;

set @report = concat('Initial state: ',
	(select
		concat('T',Timer,': ',Counts,', ')
	from #fish
	order by Timer
	for xml path('')));
print @report;

while (@day <= @endday)
begin
	--create new lanternfish for every lanternfish where timer = 0
	set @fishtobeborn = (select Counts from #fish where Timer = 0);

	--Update Timers
	update f
		set Counts = upd.Counts
	from #fish f
	join
		(select
			Timer
			,sum(Counts) as Counts
		from
			(select
				case
					when Timer = 0 then 6
					else Timer - 1
				end as Timer
				,Counts
			from #fish) f
		group by
			Timer) upd
		on f.Timer = upd.Timer;

	--create new fish
	update #fish set Counts = @fishtobeborn where Timer = 8;

	set @report = concat('After  ',@day,' days: ',
		left((select
		concat('T',Timer,': ',Counts,', ')
	from #fish
	order by Timer
	for xml path('')),3900));
	print @report;

	insert into #output values (@day,(select sum(Counts) from #fish));

	set @day = @day + 1;
end

select * from #output order by [Day] desc;

drop table #input;
drop table #output;
drop table #fish;