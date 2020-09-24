/*
Elabore un programa que elimine los elementos consecutivos de una lista.
El orden de los elementos no debe de ser alterado.
Ej.: la lista [a,a,a,a,a,b,b,a,a,d,e,e,e,e] se vuelve [a,b,a,d,e].
*/

%Si el anterior es igual al actual, eliminar el actual

consecutivos([Cabeza|Cola], NuevaLista):-
verificar(Cola,' ',NuevaLista).

verificar([Cabeza|Cola], Anterior, NuevaLista):-
\==(Cabeza, Anterior),
verificar(Cola, Cabeza, Lista),
=(NuevaLista, [Cabeza|Lista]),!.

verificar([Cabeza|Cola], Anterior, NuevaLista):-
verificar(Cola, Cabeza, Lista),
=(NuevaLista, Lista),!.

verificar([],_,[]).
