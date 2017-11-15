
centrala_terminca(simnav1,    murala,	 1000,3600,[6,750]  ,1).
centrala_terminca(instalterm,murala,     1800,7600,[12,820] ,2).
centrala_terminca(simnav2,    murala,	 500, 3600,[7,550]  ,3).
centrala_terminca(uniterm1,   pardoseala, 700, 3600,[6,200]  ,4).
centrala_terminca(uniterm2,   murala,	 2600,3600,[7,150]  ,5).


putereMaiMareDe(Valoare):-
	centrala_terminca(NumeProducator,_,Putere,_,_,_),
	Putere > Valoare,
	write('Oferit de '),tab(1),write(NumeProducator),nl.
%putereMaiMareDe(1000).

descriereProduseProducator():-
	centrala_terminca(NumeProd,Montare,_,Pret,_,_),
	(NumeProd = uniterm1 ->
		write(NumeProd),write(' ce ofera montare prin'),tab(1),write(Montare),tab(1),write('la pret de '),tab(1),write(Pret),nl
	).
%descriereProduseProducator().


caracteristic(Cara):-
		centrala_terminca(_,_,_,_,[X|List],Id),
        printlist([X|List],Cara,Id).
printlist([X|List],Cara,Id) :-
	centrala_terminca(NumeProducator,TipMontare,_,_,[X|List],Id),
    Cara = X ,write(NumeProducator),tab(1),write('cu tip montare oferit:'),tab(1),write(TipMontare),nl,
    printlist(List,Cara,Id).
%caracteristic(6).

