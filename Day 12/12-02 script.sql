set nocount on;

create table #input (
	AutoId int identity
	,[Path] nvarchar(100)
);

--Sample 0
/*insert into #input ([Path]) values('start-A');
insert into #input ([Path]) values('start-b');
insert into #input ([Path]) values('A-c');
insert into #input ([Path]) values('A-b');
insert into #input ([Path]) values('b-d');
insert into #input ([Path]) values('A-end');
insert into #input ([Path]) values('b-end');*/
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

--Extract unique waypoints from input
create table #Waypoints (
	[AutoID] int identity
	,[WaypointName] nvarchar(10)
	,IsStartPoint bit not null default 0
	,IsEndPoint bit not null default 0
	,IsSmallCave bit not null default 0
);

insert into #Waypoints (WaypointName, IsSmallCave)
select distinct
	WaypointName
	,case
		when ASCII(WaypointName) = ASCII(upper(WaypointName)) then 0
		else 1
	end as IsSmallCave
from
	(select
		left([Path],charindex('-',[Path])-1) as WaypointName
	from #input
	union all
	select
		substring([Path],charindex('-',[Path])+1,99) as WaypointName
	from #input) src;

--set start and endpoint waypoints
update #Waypoints set IsStartPoint = 1 where WaypointName = 'start';
update #Waypoints set IsEndPoint = 1 where WaypointName = 'end';

--create distict route posibilities
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

--Remove routes where x->start
delete from #Routes
where
	ToWaypointID in (select AutoID from #Waypoints where IsStartPoint = 1);

--Remove routes where end->x
delete from #Routes
where
	FromWaypointID in (select AutoID from #Waypoints where IsEndPoint = 1);

--Create paths table
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

--Create path waypoint table
create table #PathWaypoints
(
	AutoID int identity
	,PathID int
	,WayPointID int
	,IsSmallCave bit not null default 0
	,Ordering int
);

alter table #PathWaypoints add constraint uQ unique (PathID,Ordering);

--Create startpoint paths
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

--Insert path start
insert into #PathWaypoints (PathID, WayPointID, IsSmallCave, Ordering)
select
	AutoId
	,FirstWaypointID as WaypointID
	,0 as IsSmallCave
	,1 as Ordering
from #Paths;

--Insert first waypoint
insert into #PathWaypoints (PathID, WayPointID, IsSmallCave, Ordering)
select
	p.AutoId
	,LastWaypointID as WaypointID
	,w.IsSmallCave as IsSmallCave
	,2 as Ordering
from #Paths p
join #Waypoints w
	on p.LastWaypointID = w.AutoID;

--Create temp table
create table #TempPaths
(
	AutoID int identity
	,PathID int
	,OldPathID int
	,IsGenerated bit not null default 0
	,FirstWaypointID int
	,LastWaypointID int
	,[Route] nvarchar(4000)
	,IsDeadEnd bit not null default 0
	,IsEnded bit not null default 0
	,Steps int
);

--Create dead end updater table
create table #DeadEnd
(
	PathID int unique
);

--Run continiously until all paths are closes
while (select count(*) from #Paths where IsEnded = 0) > 0
begin
	--Clear temp table
	truncate table #TempPaths;

	--Generate temp table
	insert into #TempPaths (PathID, OldPathID, IsGenerated,FirstWaypointID, LastWaypointID, [Route],IsDeadEnd, IsEnded,Steps)
	select
		case
			when rownum = 1 then AutoId
			else null
		end as PathID
		,AutoId as OldPathID
		,case
			when rownum = 1 then 0
			else 1
		end as IsGenerated
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
			where
				p.IsEnded = 0) src;

	--Create new PathID for new generated paths
	update t
		set PathID = u.PathID
	from #TempPaths t
	join
		(select
			AutoID,
			MaxPathID + (row_number() over (order by AutoID)) as PathID
		from #TempPaths t
		join
			(select max(AutoID) MaxPathID from #Paths) p
			on 1=1
		where
			t.IsGenerated = 1) u
		on t.AutoID = u.AutoID;

	--Copy waypoints from old path template
	insert into #PathWaypoints (PathID,WayPointID,IsSmallCave,Ordering)
	select
		tp.PathID
		,WayPointID
		,IsSmallCave
		,pw.Ordering
	from #PathWaypoints pw
	join #TempPaths tp
		on pw.PathID = tp.OldPathID
	where
		tp.IsGenerated = 1;

	--Save new waypoint to path waypoints
	insert into #PathWaypoints (PathID, WayPointID, IsSmallCave, Ordering)
	select
		tp.PathID
		,tp.LastWaypointID
		,w.IsSmallCave
		,o.Ordering
	from #TempPaths tp
	join #Waypoints w
		on tp.LastWaypointID = w.AutoID
	join
		(select
			PathID, max(Ordering)+1 Ordering
		from #PathWaypoints
		group by
			PathID) o
		on tp.PathID = o.PathID;

	--Check if small caves have more than 2 visits
	insert into #DeadEnd
	select
		PathID
	from
		(select
			PathID, count(*) as Counts
		from
			(select
				PathID, WayPointID, count(*) Counts
			from #PathWaypoints
			where
				IsSmallCave = 1
			group by
				PathID, WayPointID) src
		where
			Counts > 2
		group by
			PathID) src
	where
		not exists (select null from #DeadEnd d where src.PathID = d.PathID);

	insert into #DeadEnd (PathID)
	select
		PathID
	from
		(select
			PathID, count(*) as Counts
		from
			(select
				PathID, WayPointID, count(*) Counts
			from #PathWaypoints
			where
				IsSmallCave = 1
			group by
				PathID, WayPointID) src
		where
			Counts > 1
		group by
			PathID) src
	where
		not exists (select null from #DeadEnd d where src.PathID = d.PathID)
		and src.Counts = 2;

	update t
		set IsDeadEnd = 1, IsEnded = 1
	from #TempPaths t
	where
		exists (select null from #DeadEnd d where t.PathID = d.PathID);

	update p
		set LastWaypointID = t.LastWaypointID
		   ,[Route] = t.[Route]
		   ,IsDeadEnd = t.IsDeadEnd
		   ,IsEnded = t.IsEnded
		   ,Steps = t.Steps
	from #Paths p
	join #TempPaths t
		on p.AutoId = t.PathID;

	set identity_insert #Paths on;

	insert into #Paths (AutoID, FirstWaypointID, LastWaypointID, [Route], IsDeadEnd, IsEnded, Steps)
	select
		PathID, FirstWaypointID, LastWaypointID, [Route], IsDeadEnd, IsEnded, Steps
	from #TempPaths
	where
		IsGenerated = 1;

	set identity_insert #Paths off;

end;

select count(*) from #Paths where IsDeadEnd = 0;

drop table #input;
drop table #Waypoints;
drop table #Routes;
drop table #Paths;
drop table #PathWaypoints;
drop table #TempPaths;
drop table #DeadEnd;
