%*
X1 = {}
X2 = {a,c}
X3 = {a,b,e}
X4 = {b,c,d}
*%

 %X1 = {}

a :- not d.
b :- not a.
b :- e, %not d.
c :- a, %not e.
c :- b, %not e.
d :-% not a, not e.
e :- a, d.
e :- b,% not c.
%no solution

 %X2 = {a,c}

a :- %not d.
%b :- %not a.
b :- e, %not d.
c :- a, %not e.
c :- b, %not e.
%d :- not a, not e.
e :- a, d.
e :- b, % not c.
% a,c valid solution


 %X3 = {a,b,e}
a :- %not d.
%b :- not a.
b :- e, not d.
%c :- a, not e.
%c :- b, not e.
%d :- %not a, not e.
e :- a, d.
e :- b,% not c.
%a

 %X4 = {b,c,d}
%a :- %not d.
b :-% not a.
%b :- e, not d.
c :- a,% not e.
c :- b, %not e.
d :-% not a, not e.
e :- a, d.
%e :- b, not c.
% b,c,d

