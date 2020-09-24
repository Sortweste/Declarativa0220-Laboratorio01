/*
  Construya la cláusula promedio_lista(L, P):-
  que, dada una lista de números L, instancie P con el
  promedio de la lista.
  Si no es posible obtener el promedio, P se instanciará con 0 y se escribirá un
  mensaje de error.
  Su programa debe considerar:
    a. Validar que L sea una lista de números.
    b. Construir una cláusula que calcule la suma de los elementos de la lista a la vez que
       realiza un conteo de los elementos de la misma.
    c. Hacer el cálculo del promedio.
*/

promedio_lista(Lista, Promedio):-
    calcular(Lista, 0, 0, Promedio).

calcular([Cabeza|Cola], SumaElementos, ContadorElementos, Promedio):-
    number(Cabeza),
    is(Sum, +(SumaElementos, Cabeza)),
    is(Cont, +(ContadorElementos, 1)),
    calcular(Cola, Sum, Cont, Promedio),!.

calcular([],Sum,Cont,Promedio):-
   is(Promedio, /(Sum, Cont)).

calcular(_,_,_,0):-
