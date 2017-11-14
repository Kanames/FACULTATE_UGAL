%5 oferte de desktop care sa aiba urmatoarele caracteristici:
%- producator
%- procese
%- dimenMemRam
%- lista caracteristici numerice,atom,sir de caractere

%Nr 1
	%1.Dimensiune mem Ram mai mica de o valoare citita de la tasttura
	%2.Un anumit producator citit de la tastatura
	%3.O singura caracteristica citita de la tastatura pt a verifica in toate caracteristicile din lista
	
desktop(asus,dualCore,2,[a,b,c]).
desktop(lg,i3,4,[d,e,f]).
desktop(asus,i5,8,[f,g,h]).
desktop(packBell,i5,4,[,y,z]).
desktop(samsung,i7,16,[t,r,p]).

%punctul 1
memRamMaiMareDe(Min):-
desktop(NumePrducator,_,RAM,_),
RAM > Min,
write(NumePrducator),nl.

memRamMaiMicaDe(Max):-
desktop(NumePrducator,_,RAM,_),
RAM < Max,
write(NumePrducator),nl.

%punctul 2
descriereProduseProducator(NumeProducator):-
desktop(NumePrducator,Procesor,RAM,_),
NumePrducator = NumeProducator,
write(NumePrducator),tab(3),write(Procesor),nl,write(RAM),nl.

%punctul 3 solutia 1
caracteristic(Cara):-
	desktop(NumProd,Proc,Ram,[X|List]),	
        printlist([X|List],Cara,NumProd).
printlist([],Cara,NumProd):-nl,write('Nu sa gasit caracteristica !'),nl.
printlist([X|List],Cara,NumProd) :-
    Cara = X ,write(NumProd),nl, 
    printlist(List,Cara,NumProd).
%punctul 3 solutia 2	
	%puteam sa pun la fiecare desktop inca o caracteristica numit cod unic astfel incat sa duc codul unic mai departe
	%si cand gaseam un match afisam desktop-ul cu cod unic.
