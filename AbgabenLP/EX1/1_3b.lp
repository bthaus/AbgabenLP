%*
X1 = {a,c,d,e}
X2 = {a,c,d,f}
X3 = {b,c,d,e}
X4 = {b,e}

if(rechts.contains(negatedElementOfX)){
    delete statement
}else if(rechts.contains(negatedElement)){
    delete negatedElement
}

*%

%X1 = {a,c,d,e}
a :- %not b.
%b :- not c.
b :-% not f.
c :- a.
c :- d.
d :- c, e.
d :-% not b.
%e :- not a, not f.
%f :- not e.
%a,c,d,b, unequal, not valid

%X2 = {a,c,d,f}
a :- %not b.
%b :- not c.
%b :- not f.
c :- a.
c :- d.
d :- c, e.
d :- %not b.
%e :- not a, not f.
f :-% not e.
%f,d,c,a, -> valid

%X3 = {b,c,d,e}
%a :- not b.
%b :- not c.
b :- %not f.
c :- a.
c :- d.
d :- c, e.
%d :- not b.
e :-% not a, not f.
%f :- not e.
%b,e -> not valid

%X4 = {b,e}
%a :- not b.
b :-% not c.
b :-% not f.
c :- a.
c :- d.
d :- c, e.
%d :- not b.
e :-% not a, not f.
%f :- not e.
%b,e, -> valid