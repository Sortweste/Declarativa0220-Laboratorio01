%Al hacer las siguientes consultas en Prolog, ¿qué respuesta se obtiene en cada uno de los casos?

%1. ==([a,b,c,d], [a|[b,c,d]]).
  %Verdadero: Propiedad [a,b,c]  ==  [a|[b,c]]

%2.\==([a, b, c, d], [a, b| [c, d]]).
  %Falla: Propiedad anterior.

%3. =(L1, [1, 2]), =(L2, [a, b]), =(L3, [L1|L2]).
    /* L1 = [1,2]
       L2 = [a,b]
       L3 = [[1,2],a,b]
    */
