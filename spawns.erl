-module(spawns).

-import(for_loop, [for_loop/3]).

-export([spawns/1]).

runnable(Thread_Number) -> for_loop(1, 100,
								fun(I) -> io:fwrite("Thread ~p: ~p\n", [Thread_Number, I]) end
							).

spawn_thread(I) -> spawn(fun() -> runnable(I) end).

spawns(N) -> for_loop(1, N, fun(I) -> spawn_thread(I) end).
