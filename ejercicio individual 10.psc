Proceso IntercambiarElementosVector
    // Definir variables
    Definir N Como Entero;
    Definir vector Como Arreglo de Entero;
    Definir temp Como Entero;
    Definir i Como Entero;
	
    // Solicitar cantidad de elementos (en este caso, 8)
    N <- 8;
	
    // Redimensionar el arreglo para N elementos
    Redimensionar vector[N];
	
    // Leer los elementos del vector
    Escribir "Ingrese los ", N, " elementos del vector:";
    Para i <- 0 Hasta N-1 Con Paso 1 Hacer
        Leer vector[i];
    Fin Para
	
    // Intercambiar los elementos del vector
    Para i <- 0 Hasta (N/2)-1 Con Paso 1 Hacer
        // Intercambiar vector[i] con vector[N-1-i]
        temp <- vector[i];
        vector[i] <- vector[N-1-i];
        vector[N-1-i] <- temp;
    Fin Para
	
    // Mostrar el vector intercambiado
    Escribir "El vector intercambiado es:";
    Para i <- 0 Hasta N-1 Con Paso 1 Hacer
        Escribir vector[i];
    Fin Para
	
FinProceso
