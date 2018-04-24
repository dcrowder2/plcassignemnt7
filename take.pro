take(N, [], []).
take(0, [_|_], []).
take(N, [H1|T1], [H2|T2]):- (H1 == H2 -> take(NN, T1, T2)), NN #= N-1.
take(N, [H|T] , [H | X]):- take(NN, T, X), NN #= N-1.
