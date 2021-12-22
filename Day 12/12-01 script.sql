set nocount on;

create table #input (
	AutoId int identity
	,[Path] nvarchar(100)
);

--Sample 1
/*insert into #input ([Path]) values('dc-end');
insert into #input ([Path]) values('HN-start');
insert into #input ([Path]) values('start-kj');
insert into #input ([Path]) values('dc-start');
insert into #input ([Path]) values('dc-HN');
insert into #input ([Path]) values('LN-dc');
insert into #input ([Path]) values('HN-end');
insert into #input ([Path]) values('kj-sa');
insert into #input ([Path]) values('kj-HN');
insert into #input ([Path]) values('kj-dc');*/
--Sample 2
/*insert into #input ([Path]) values ('fs-end');
insert into #input ([Path]) values ('he-DX');
insert into #input ([Path]) values ('fs-he');
insert into #input ([Path]) values ('start-DX');
insert into #input ([Path]) values ('pj-DX');
insert into #input ([Path]) values ('end-zg');
insert into #input ([Path]) values ('zg-sl');
insert into #input ([Path]) values ('zg-pj');
insert into #input ([Path]) values ('pj-he');
insert into #input ([Path]) values ('RW-he');
insert into #input ([Path]) values ('fs-DX');
insert into #input ([Path]) values ('pj-RW');
insert into #input ([Path]) values ('zg-RW');
insert into #input ([Path]) values ('start-pj');
insert into #input ([Path]) values ('he-WI');
insert into #input ([Path]) values ('zg-he');
insert into #input ([Path]) values ('pj-fs');
insert into #input ([Path]) values ('start-RW');*/
--Real data
insert into #input ([Path]) values('xx-xh');
insert into #input ([Path]) values('vx-qc');
insert into #input ([Path]) values('cu-wf');
insert into #input ([Path]) values('ny-LO');
insert into #input ([Path]) values('cu-DR');
insert into #input ([Path]) values('start-xx');
insert into #input ([Path]) values('LO-vx');
insert into #input ([Path]) values('cu-LO');
insert into #input ([Path]) values('xx-cu');
insert into #input ([Path]) values('cu-ny');
insert into #input ([Path]) values('xh-start');
insert into #input ([Path]) values('qc-DR');
insert into #input ([Path]) values('vx-AP');
insert into #input ([Path]) values('end-LO');
insert into #input ([Path]) values('ny-DR');
insert into #input ([Path]) values('vx-end');
insert into #input ([Path]) values('DR-xx');
insert into #input ([Path]) values('start-DR');
insert into #input ([Path]) values('end-ny');
insert into #input ([Path]) values('ny-xx');
insert into #input ([Path]) values('xh-DR');
insert into #input ([Path]) values('cu-xh');


create table #Waypoints (
	[AutoID] int identity
	,[WaypointName] nvarchar(10)
	,IsStartPoint bit not null default 0
	,IsEndPoint bit not null default 0
	,IsBigCave bit not null default 0
);

insert into #Waypoints (WaypointName, IsBigCave)
select distinct
	WaypointName
	,case
		when ASCII(WaypointName) = ASCII(upper(WaypointName)) then 1
		else 0
	end as IsBigCave
from
	(select
		left([Path],charindex('-',[Path])-1) as WaypointName
	from #input
	union all
	select
		substring([Path],charindex('-',[Path])+1,99) as WaypointName
	from #input) src;

update #Waypoints set IsStartPoint = 1 where WaypointName = 'start';
update #Waypoints set IsEndPoint = 1 where WaypointName = 'end';

create table #Routes
(
	AutoID int identity
	,FromWaypointID int
	,ToWaypointID int
);

insert into #Routes (FromWaypointID, ToWaypointID)
select distinct
	*
from
	(select
		f.AutoID as FromWaypointID
		,t.AutoID as ToWaypointID
	from #input i
	join #Waypoints f
		on left([Path],charindex('-',[Path])-1) = f.WaypointName
	join #Waypoints t
		on substring([Path],charindex('-',[Path])+1,99) = t.WaypointName

	union all

	select
		t.AutoID as FromWaypointID
		,f.AutoID as ToWaypointID
	from #input i
	join #Waypoints f
		on left([Path],charindex('-',[Path])-1) = f.WaypointName
	join #Waypoints t
		on substring([Path],charindex('-',[Path])+1,99) = t.WaypointName) src;

/*select
	r.AutoID, f.WaypointName as [From], f.IsBigCave, t.WaypointName as [To], t.IsBigCave
from #Routes r
join #Waypoints f
	on r.FromWaypointID = f.AutoID
join #Waypoints t
	on r.ToWaypointID = t.AutoID
order by 2;*/

delete from #Routes
where
	ToWaypointID in (select AutoID from #Waypoints where IsStartPoint = 1);

delete from #Routes
where
	FromWaypointID in (select AutoID from #Waypoints where IsEndPoint = 1);

create table #Paths
(
	AutoId int identity
	,FirstWaypointID int
	,LastWaypointID int
	,[Route] nvarchar(4000)
	,IsDeadEnd bit not null default 0
	,IsEnded bit not null default 0
	,Steps int not null default 1
);

insert into #Paths (FirstWaypointID, LastWaypointID, [Route])
select
	r.FromWaypointID as FirstWaypointID
	,r.ToWaypointID as LastWayPointID
	,concat(w.WaypointName,',',n.WaypointName) as [Route]
from #Routes r
join #Waypoints w
	on r.FromWaypointID = w.AutoID
join #Waypoints n
	on r.ToWaypointID = n.AutoID
where
	w.IsStartPoint = 1;

create table #TempPaths
(
	AutoId int
	,OldAutoID int
	,FirstWaypointID int
	,LastWaypointID int
	,[Route] nvarchar(4000)
	,IsDeadEnd bit not null default 0
	,IsEnded bit not null default 0
	,Steps int
);


while (select count(*) from #Paths where IsEnded = 0 and IsDeadEnd = 0) > 0
begin
	truncate table #TempPaths;

	insert into #TempPaths
	select
		case
			when rownum = 1 then AutoId
			else null
		end as AutoId
		,AutoId as OldAutoID
		,FirstWaypointID, LastWaypointID, Route, IsDeadEnd, IsEnded, Steps
	from
		(select
			p.AutoId
			,row_number() over (partition by p.AutoId order by w.AutoID) as rownum
			,p.FirstWaypointID
			,case
				when r.ToWaypointID is null then p.LastWaypointID
				else r.ToWaypointID
			end as LastWaypointID
			,case
				when r.ToWaypointID is null then [Route]
				else concat([Route],',',w.WaypointName)
			end as [Route]
			,case
				when r.ToWaypointID is null then 1
				when sc.AutoID is not null then 1
				else p.IsDeadEnd
			end as IsDeadEnd
			,case
				when w.IsEndPoint = 1 then 1
				else p.IsEnded
			end as IsEnded
			,case
				when r.ToWaypointID is null then p.Steps
				else p.Steps + 1
			end as Steps
		from #Paths p
		left join #Routes r
			on p.LastWaypointID = r.FromWaypointID
		left join #Waypoints w
			on r.ToWaypointID = w.AutoID
		--check for small caves
		left join #Waypoints sc
			on p.Route like concat('%',sc.WaypointName,'%')
			and sc.IsBigCave = 0
			and w.AutoID = sc.AutoID
		where
			p.IsDeadEnd = 0
			and p.IsEnded = 0) src;

	--select * from #TempPaths

	update p
		set LastWaypointID = t.LastWaypointID
		   ,[Route] = t.[Route]
		   ,IsDeadEnd = t.IsDeadEnd
		   ,IsEnded = t.IsEnded
		   ,Steps = t.Steps
	from #Paths p
	join #TempPaths t
		on p.AutoId = t.AutoId
	where
		t.AutoId is not null;

	insert into #Paths (FirstWaypointID, LastWaypointID, [Route], IsDeadEnd, IsEnded, Steps)
	select
		FirstWaypointID, LastWaypointID, [Route], IsDeadEnd, IsEnded, Steps
	from #TempPaths
	where
		AutoId is null;

end;

select count(*) from #Paths where IsDeadEnd = 0;
select * from #Paths;

drop table #input;
drop table #Waypoints;
drop table #Routes;
drop table #Paths;
drop table #TempPaths;
