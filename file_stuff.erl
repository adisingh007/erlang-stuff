-module(file_stuff).

-export([write_to_file/2, append_to_file/2, read_from_file/1]).

write_to_file(File_Name, String) ->
	{ok, Fh} = file:open(File_Name, [write]),
	file:write(Fh, String).

append_to_file(File_Name, String) ->
	{ok, Fh} = file:open(File_Name, [append]),
	file:write(Fh, String).

read_from_file(File_name) ->
	{ok, Fh} = file:open(File_name, [read]),
	Words = file:read(Fh, 1024*1024),
	io:fwrite("~p\n", [Words]).
