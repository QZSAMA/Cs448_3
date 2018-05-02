%% def 4 ppl 4 day 4 item
nand(X,Y):-not((X,Y)).
xor(X,Y):-nand(nand(X,nand(X,Y)),nand(nand(X,Y),Y)).
xor(A,B,C,D):-xor(xor(xor(A,B),C),D).

person(barnes).
person(demetri).
person(hugh).
person(langone).
%% orderppl(barnes,demetri).
%% orderppl(demetri,hugh).
%% orderppl(hugh,langone).
%% orderppl(X,Y):-orderppl(X,Z),orderppl(Z,Y).

%% notbarnes(X):-
isbarnes(barnes).
isdemetri(demetri).
ishugh(hugh).
islangone(langone).
item(ballon).
item(clothesline).
item(frisbee).
item(watertower).
isballon(ballon).
isclothesline(clothesline).
isfrisbee(frisbee).
iswatertower(watertower).
%% orderitem(ballon,clothesline).
%% orderitem(clothesline,frisbee).
%% orderitem(frisbee,watertower).
%% orderitem(X,Y):-orderitem(X,Z),orderitem(Z,Y).



day(tue).
day(wed).
day(thu).
day(fri).
%% def common sense about day 
early(tue,wed).
early(wed,thu).
early(thu,fri).
early(X,Y):-early(X,Z), early(Z,Y).
istue(tue).
iswed(wed).
isthu(thu).
isfri(fri).




%% watch(X,Y,Z):-xor(isbarnes(X),isdemetri(X),ishugh(X),islangone(X)),xor(isballon(Y),isclothesline(Y),isfrisbee(Y),iswatertower(Y)),xor(istue(Z),iswed(Z),isthu(Z),isfri(Z)),
%% ((X=langone)-> (not(isballon(Y)),not(isfrisbee(Y)),not(iswatertower(Y)),not(istue(Z)),not(isfri(Z))));
%% ((X=demetri)->(not(istue(Z))));
%% ((X=hugh)->(not(isfrisbee(Y))));
%% ((Z=fri)->(isbarnes(X);isclothesline(Y))).


%% watch(X,Y,Z):-xor(isbarnes(X),isdemetri(X),ishugh(X),islangone(X)),xor(isballon(Y),isclothesline(Y),isfrisbee(Y),iswatertower(Y)),xor(istue(Z),iswed(Z),isthu(Z),isfri(Z)).
%% watch(langone,Y,Z):-not(isballon(Y)),not(isfrisbee(Y)),not(iswatertower(Y)),not(istue(Z)),not(isfri(Z)).
%% watch(demetri,Y,Z):-not(istue(Z)).
%% watch(X,Y,fri):-isbarnes(X);isclothesline(Y).
%% watch(hugh,Y,Z):-not(isfrisbee(Y)).
%% watch(X,ballon,Z):-early(Z)
%% (isbarnes(X);ishugh(X);islangone(X);),(isballon(Y);isclothesline(Y);isfrisbee(Y);iswatertower(Y)),()
%% langone(X,Y):-item(X),time(Y),early(Y,fri),early(tue,Y),not(isballon),not(frisbee),not(watertower).
%% orderitem(ballon,X),orderitem(X,frisbee),orderitem(X,watertower).


%% def watch(ppl,item)
%% watch(X,Y):-
%% def watchAt(ppl,time)
%% watchAt(X,Y):-person(X),day(Y).
%% def timeVday(time,day)
%% itemVday(X,Y):-item(X),day(Y).

%% 
%% watch(langone,Y):-




start(Final):-
Final=[[P1,I1,D1],[P2,I2,D2],[P3,I3,D3],[P4,I4,D4]],

%% person(P1),person(P2),person(P3),person(P4),
%% P1\==P2,P2\==P3,P3\==P4,
item(I1),item(I2),item(I3),item(I4),
I1\==I2,I2\==I3,I3\==I4,I1\==I3,I1\==I4,I2\==I4,
day(D1),day(D2),day(D3),day(D4),
D1\==D2,D2\==D3,D3\==D4,D1\==D3,D1\==D4,D2\==D4,
person(P1),person(P2),person(P3),
P1\==P2,P2\==P3,P3\==P4,P1\==P3,P1\==P4,P2\==P4,
P1=barnes,
P2=demetri,
P3=hugh,
P4=langone,
I4\==ballon,I4\==frisbee,I4\==watertower,D4\==tue,D4\==fri,
D2\==tue,
member([barnes,_,fri],Final),
member([_,ballon,CD1],Final),early(D4,CD1),
member([CP2,frisbee,CD2],Final),early(CD2,D4),CP2\==hugh.






%% I4=clothesline;P4=barnes,
%% P1\==demetri,
%% ((P2=langone->(I1==frisbee,(I3==ballon;I4==ballon));
%% (P3=langone->(I4==ballon,(I1==frisbee;I2==frisbee))))).
%% (P2=langone;P3=langone).