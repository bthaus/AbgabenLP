canary(tweety).
penguin(tux).
bird(X) :- canary(X).
bird(X) :- penguin(X).
walks(X) :- penguin(X).
walks(X) :- bird(X), not flies(X).
flies(X) :- bird(X), not walks(X).
%grounding
bird(tweety) :- canary(tweety).
bird(tux) :- penguin(tux).
walks(tux) :- penguin(tux).

walks(tux) :- bird(tux), not flies(tux).
walks(tweety) :- bird(tweety), not flies(tweety).

flies(tweety) :- bird(tweety), not walks(tweety).
flies(tux) :- bird(tux), not walks(tux).






