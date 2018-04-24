take(N, [], []).
take(0, _, []).
take(N, [H1|T1], [H2|T2]):- (H1 == H2 -> take(N-1, T1, T2)).
take(N, [H|T] , [H | X]):- take(N-1, T, X).
