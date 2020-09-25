/*
Elabore un programa que duplique cada elemento de una lista. 
Ejemplo: la lista [1,2,3] se vuelve [1,1,2,2,3,3].
*/

duplicar_elemento([Cabeza|Cola], ListaDuplicada):-
    duplicar_elemento(Cola, NuevaLista),
    =(ListaDuplicada, [Cabeza, Cabeza|NuevaLista]),!.

duplicar_elemento([],[]).
    
