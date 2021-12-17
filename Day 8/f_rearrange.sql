create function f_rearrange (@input nvarchar(100)) returns nvarchar(100) as
begin

	declare @worktable table (
		[char] nvarchar(1)
	);
	declare @char nvarchar(1);

	while len(@input) > 0
	begin
		set @char = left(@input,1);
		set @input = SUBSTRING(@input,2,100);
		insert into @worktable values (@char);
	end;

	declare @output nvarchar(100);

	select
		@output = (select
			concat([char],'')
		from @worktable
		order by
			[char]
		for xml path(''));

	return @output;

end