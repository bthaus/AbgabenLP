connect(amsterdam ,brussels).
connect(brussels ,cologne).
connect(cologne ,amsterdam).

tour(X,Z) :- connect(X,Y), connect(Y,Z).
finish(Y) :- connect(X,amsterdam), tour(X,Y).

%first step: grounding. -> creating all possible combinations to eliminate variables 
% tour (cologne, brussels). tour(amsterdam, cologne), tour(brussels, amsterdam)
% now insert values into variables for finish(Y) :- ....
% -> finish(Y) :- connect (cologne, amsterdam), tour(cologne, Y)
%-> now insert Y. the only possible solution for is tour(cologne, brussels) -> finish(brussels)
