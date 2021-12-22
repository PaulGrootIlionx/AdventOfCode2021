set nocount on;

create table #input (
	AutoID int identity
	,[Row] nvarchar(255)
);

--demo data
/*insert into #input ([Row]) values ('5483143223');
insert into #input ([Row]) values ('2745854711');
insert into #input ([Row]) values ('5264556173');
insert into #input ([Row]) values ('6141336146');
insert into #input ([Row]) values ('6357385478');
insert into #input ([Row]) values ('4167524645');
insert into #input ([Row]) values ('2176841721');
insert into #input ([Row]) values ('6882881134');
insert into #input ([Row]) values ('4846848554');
insert into #input ([Row]) values ('5283751526');*/
--Real data
insert into #input ([Row]) values('5251578181');
insert into #input ([Row]) values('6158452313');
insert into #input ([Row]) values('1818578571');
insert into #input ([Row]) values('3844615143');
insert into #input ([Row]) values('6857251244');
insert into #input ([Row]) values('2375817613');
insert into #input ([Row]) values('8883514435');
insert into #input ([Row]) values('2321265735');
insert into #input ([Row]) values('2857275182');
insert into #input ([Row]) values('4821156644');

create table #grid (
	AutoID int identity
	,X int
	,Y int
	,Energy int
);

declare @X int;
declare @Y int;
declare @Row nvarchar(255);
declare @Energy int;

declare inputcur cursor for
select
	*
from #input
order by AutoID;

open inputcur;

fetch next from inputcur into @Y, @Row;

while @@FETCH_STATUS = 0
begin
	set @X = 0;
	while len(@Row) > 0
	begin
		set @Energy = left(@Row,1);
		set @Row = substring(@Row,2,255);
		insert into #grid (X,Y,Energy) values (@X, @Y, @Energy);
		set @X = @X + 1;
	end
	fetch next from inputcur into @Y, @Row;
end;

close inputcur;
deallocate inputcur;

create table #flashes (Step int, GridID int);
create table #tempflashes (GridId int);
create table #updates (GridID int, Counts int); 

declare @step int = 1;
declare @maxsteps int = 100;
declare @flashes int = 0;
declare @output int = 0;
declare @message nvarchar(4000);

while (select count(*) from #flashes where Step = @step - 1) < 100
begin

	while (select count(*) from #grid g where Energy = 9 and not exists (select null from #flashes f where Step = @step and f.GridID = g.AutoID)) > 0
	begin
		--set @message = concat('Step ',@step,': ',(select count(*) from #grid g where Energy = 9 and not exists (select null from #flashes f where Step = @step and f.GridID = g.AutoID)));
		--print @message;

		--select @step, X, Y, Energy, AutoID from #grid where Y = 2 and X = 1;
		
		insert into #tempflashes
		select g.AutoID from #grid g where Energy = 9 and not exists (select null from #flashes f where Step = @step and f.GridID = g.AutoID) group by AutoID;

		/*select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y+1 = g2.Y
				and g1.X-1 = g2.X
			where
				g1.Energy = 9
				and g1.AutoID = 3
				--and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)*/

		insert into #updates (GridID, Counts)
		select
			AutoID, count(*) as Counts
		from (
			--bl
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y+1 = g2.Y
				and g1.X-1 = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)
			--l
			union all
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y = g2.Y
				and g1.X-1 = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)
			--tl
			union all
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y-1 = g2.Y
				and g1.X-1 = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)
			--t
			union all
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y-1 = g2.Y
				and g1.X = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)
			--tr
			union all
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y-1 = g2.Y
				and g1.X+1 = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)
			--r
			union all
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y = g2.Y
				and g1.X+1 = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)
			--br
			union all
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y+1 = g2.Y
				and g1.X+1 = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)
			--b
			union all
			select
				g2.AutoID
			from #grid g1
			left join #grid g2
				on g1.Y+1 = g2.Y
				and g1.X = g2.X
			where
				g1.Energy = 9
				and g2.Energy < 9
				and not exists (select null from #flashes f where Step = @step and f.GridID = g1.AutoID)) src
		group by
			AutoID;

		update g
			set Energy = case
							when g.Energy + u.Counts > 9 then 9
							else g.Energy + u.Counts
						end
		from #grid g
		join #updates u
			on g.AutoID = u.GridID;

		insert into #flashes select @step, GridId from #tempflashes;

		truncate table #updates;
		truncate table #tempflashes;
	end;

	update #grid
		set Energy = case
						when Energy = 9 then 0
						else Energy + 1
					end;

	set @message = concat('After step ',@step);
	print @message;

	declare printcur cursor for
	select
		Y, X, Energy
	from #grid
	order by Y, X;

	declare @lastY int = 1;
	set @message = '';

	open printcur;

	fetch next from printcur into @Y, @X, @Energy;

	while @@FETCH_STATUS = 0
	begin
		if (@lastY <> @Y)
		begin
			print @message;
			set @message = '';
		end;

		set @message = concat(@message,@energy);

		set @lastY = @Y;
		fetch next from printcur into @Y, @X, @Energy;
	end;
	print @message;

	close printcur;
	deallocate printcur;

	set @step = @step + 1;
end;

select Step,count(*) from #flashes group by Step order by Step desc;

drop table #input;
drop table #grid;
drop table #flashes;
drop table #updates;
drop table #tempflashes;
