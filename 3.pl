day(tue).
day(wed).
day(thu).
day(fri).
%% def common sense about day 
early(tue,wed).
early(wed,thu).
early(thu,fri).
early(X,Y):-early(X,Z), early(Z,Y).

%% name,item,day
start(Final):- 
%% Name=[barnes,demetri,hughs,langone],
%% Item=[ballon,clothesline,frisbee,watertower],
%% Day=[tue,wed,thu,fri],
Final=[[_,clothesline,_],[_,ballon,_],[_,frisbee,_],[_,watertower,_]],
	member([langone,Li,Ld],Final),Li\==ballon,Li\==frisbee,Li\==watertower,
	
	member([_,Tf,thu],Final),Tf\==frisbee,
	member([_,Wi,wed],Final),Wi\==ballon,
	member([hughs,Hi,_],Final),Hi\==frisbee,
	
	member([barnes,_,_],Final),
	
	member([Fn,Fi,fri],Final),(Fn==barnes;Fi==clothesline),
	member([Tn,Ti,tue],Final),Tn\==demetri,Tn\==langone,Ti\==ballon,
	member([demetri,_,Dd],Final),Dd\==tue,
	member([_,ballon,Bd],Final),Bd\==tue,Bd\==wed.

%% Final=[[_,_,tue],[_,_,wed],[_,_,thu],[_,_,fri]],
%% 	member([langone,Li,Ld],Final),Li\==ballon,Li\==frisbee,Li\==watertower,ld==wed,
%% 	member([_,frisbee,_])
	
%% 	member([hughs,Hi,_],Final),Hi\==frisbee,
	
%% 	member([barnes,_,_],Final),
	
%% 	member([demetri,_,Dd],Final),Dd\==tue,
%% 	member([_,ballon,Bd],Final),Bd\==tue,Bd\==wed.