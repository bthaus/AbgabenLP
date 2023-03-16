a :- b, d.
a :- c, e.
b :- d, m.
b :- e, f.
c :- d, e.
d.
e :- d.
f :- b, c.
g :- d, f.
g :- e, h.
h :- c, k.
k :- a, e.


%either compute all answer sets or
% d is true, so -> e.(7) -> c. (5) -> a. (2) -> k. (12) -> h. (11) -> g (10) und fertig
%Answer: 1
%d a e c g h k
%SATISFIABLE