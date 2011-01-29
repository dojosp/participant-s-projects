-module(programa).

-export([rot/1,rot/2]).

rot([]) -> [];
rot([$Z|Tail]) -> [$A | rot(Tail)];
rot([First|Tail]) -> [First + 1 | rot(Tail)].

rot([],_) -> [];
rot([$Z|Tail], N) -> [$A + N - 1 | rot(Tail, N)];
rot([$A|Tail],52) -> [$A| rot(Tail,52)];
rot([Letter|Tail], N) when($Z-Letter>=N) -> [Letter + N | rot(Tail, N)];
rot([Letter|Tail], N) -> [ $A + N - ($Z-Letter)-1 | rot(Tail, N)].