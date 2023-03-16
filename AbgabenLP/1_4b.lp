num(1..3).
lucky(X) :- num(X), not unlucky(X).
unlucky(X) :- num(X), not lucky(X).
p :- lucky(X), lucky(Y), X != Y, not p.

%grounded
num(1). num(2). num(3).

lucky(1) :- num(1), not unlucky(1).
lucky(2) :- num(2), not unlucky(2).
lucky(3) :- num(3), not unlucky(3).

unlucky(1) :- num(1), not lucky(1).
unlucky(2) :- num(2), not lucky(2).
unlucky(3) :- num(3), not lucky(3).

p :- lucky(1), lucky(2), 1 != 2, not p.
p :- lucky(1), lucky(3), 1 != 3, not p.
p :- lucky(2), lucky(1), 2 != 1, not p.
p :- lucky(2), lucky(3), 2 != 3, not p.
p :- lucky(3), lucky(2), 3 != 2, not p.
p :- lucky(3), lucky(1), 3 != 1, not p.





