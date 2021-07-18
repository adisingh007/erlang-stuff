-module(for_loop).

-export([for_loop/4, for_loop/3]).

for_loop(I, N, _) when I >= N -> ok;
for_loop(I, N, Exec) when I < N ->
	for_loop(I,N,1,Exec).

for_loop(I, N, _, _) when I >= N -> ok;
for_loop(I, N, PLUS, Exec) when I < N ->
	Exec(I),
	for_loop(I+PLUS, N, PLUS, Exec).
