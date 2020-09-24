/*
Dividir una lista en dos listas, la cláusula debe recibir la lista original y la cantidad de elementos
de la primera sublista. En los argumentos tercero y cuarto la cláusula devuelve las dos listas
generadas. No usar ningún predicado predefinido. Ej.: dados la lista [1,2,3,4,5,6,7] y N=3, se
crean las listas [1,2,3] y [4,5,6,7].
*/

% ?- dividir_listas([1,2,3,4,5,6,7],3,X,Y).

dividir_listas(Lista, Pivote, Parte1, Parte2):-
  division(Lista, Pivote, 0, Parte1),
  division_pivote(Lista, Pivote, 0, Parte2).

division([Cabeza|Cola], Pivote, Contador, Parte1):-
  <(Contador, Pivote),
  is(Cont, +(Contador,1)),
  division(Cola, Pivote, Cont, NuevaLista),
  =(Parte1, [Cabeza|NuevaLista]),!.

division([Cabeza|Cola], Pivote, Contador, Parte1):-
  =(Parte1, []),!.


division_pivote([Cabeza|Cola], Pivote, Contador, Parte2):-
  >=(Contador, Pivote),
  is(Cont, +(Contador,1)),
  division_pivote(Cola, Pivote, Cont, NuevaLista),
  =(Parte2, [Cabeza|NuevaLista]),!.

division_pivote([Cabeza|Cola], Pivote, Contador, Parte2):-
  is(Cont, +(Contador,1)),
  division_pivote(Cola, Pivote, Cont, NuevaLista),
  =(Parte2, NuevaLista).

division_pivote([],_,_,[]).
