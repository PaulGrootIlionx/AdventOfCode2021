set nocount on;

create table #input (
	AutoID int identity
	,Timer int
	);

--insert into #input (Timer) values (3),(4),(3),(1),(2);
insert into #input (Timer) values (1),(1),(1),(2),(1),(5),(1),(1),(2),(1),(4),(1),(4),(1),(1),(1),(1),(1),(1),(4),(1),(1),(1),(1),(4),(1),(1),(5),(1),(3),(1),(2),(1),(1),(1),(2),(1),(1),(1),(4),(1),(1),(3),(1),(5),(1),(1),(1),(1),(3),(5),(5),(2),(1),(1),(1),(2),(1),(1),(1),(1),(1),(1),(1),(1),(5),(4),(1),(1),(1),(1),(1),(3),(1),(1),(2),(4),(4),(1),(1),(1),(1),(1),(1),(3),(1),(1),(1),(1),(5),(1),(3),(1),(5),(1),(2),(1),(1),(5),(1),(1),(1),(5),(3),(3),(1),(4),(1),(3),(1),(3),(1),(1),(1),(1),(3),(1),(4),(1),(1),(1),(1),(1),(2),(1),(1),(1),(4),(2),(1),(1),(5),(1),(1),(1),(2),(1),(1),(1),(1),(1),(1),(1),(1),(2),(1),(1),(1),(1),(1),(5),(1),(1),(1),(1),(3),(1),(1),(1),(1),(1),(3),(4),(1),(2),(1),(3),(2),(1),(1),(2),(1),(1),(1),(1),(4),(1),(1),(1),(1),(4),(1),(1),(1),(1),(1),(2),(1),(1),(4),(1),(1),(1),(5),(3),(2),(2),(1),(1),(3),(1),(5),(1),(5),(1),(1),(1),(1),(1),(5),(1),(4),(1),(2),(1),(1),(1),(1),(2),(1),(3),(1),(1),(1),(1),(1),(1),(2),(1),(1),(1),(3),(1),(4),(3),(1),(4),(1),(3),(2),(1),(1),(1),(1),(1),(3),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(2),(1),(5),(1),(1),(1),(1),(2),(1),(1),(1),(3),(5),(1),(1),(1),(1),(5),(1),(1),(2),(1),(2),(4),(2),(2),(1),(1),(1),(5),(2),(1),(1),(5),(1),(1),(1),(1),(5),(1),(1),(1),(2),(1);

create table #output (
	[Day] int
	,[Counts] int
);

declare @report nvarchar(4000);
declare @day int = 1;
declare @endday int = 80;
declare @maxupdateid int;

set @report = concat('Initial state: ',
	(select
		concat(Timer,',')
	from #input
	order by AutoID
	for xml path('')));
print @report;

while (@day <= @endday)
begin
	--register max current AutoID
	select @maxupdateid = max(AutoID) from #input;

	--create new lanternfish for every lanternfish where timer = 0
	insert into #input
	select
		9 as Timer
	from #input
	where
		Timer = 0;

	--Update Timers
	update #input
		set Timer = case
						when Timer = 0 then 6
						else Timer - 1
					end;

	set @report = concat('After  ',@day,' days: ',
		left((select
			concat(Timer,',')
		from #input
		order by AutoID
		for xml path('')),3900));
	print @report;

	insert into #output values (@day,(select count(*) from #input));

	set @day = @day + 1;
end

select * from #output order by [Day] desc;

drop table #input;
drop table #output;