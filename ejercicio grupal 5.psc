Proceso OrdenarClientesPorAccidentabilidad
    // Definir variables
    Definir N Como Entero;
    Definir nombres Como Arreglo de Cadena;  // Definición del arreglo de nombres
    Definir tasasAccidentabilidad Como Arreglo de Real;  // Definición del arreglo de tasas
    Definir tempNombre Como Cadena;
    Definir tempTasa Como Real;
    Definir i, j Como Entero;
	
    // Solicitar cantidad de clientes N
    Escribir "Ingrese la cantidad de clientes:";
    Leer N;
	
    // Redimensionar arreglos para N elementos
    Redimensionar nombres[N];
    Redimensionar tasasAccidentabilidad[N];
	
    // Capturar nombres y tasas de accidentabilidad
    Para i <- 1 Hasta N Con Paso 1 Hacer
        Escribir "Ingrese el nombre del cliente ", i, ":";
        Leer nombres[i];
        Escribir "Ingrese la tasa de accidentabilidad del cliente ", i, ":";
        Leer tasasAccidentabilidad[i];
    Fin Para
	
    // Ordenar en base a la tasa de accidentabilidad de mayor a menor
    Para i <- 1 Hasta N - 1 Con Paso 1 Hacer
        Para j <- 1 Hasta N - i Con Paso 1 Hacer
            Si tasasAccidentabilidad[j] < tasasAccidentabilidad[j + 1] Entonces
                // Intercambiar nombres
                tempNombre <- nombres[j];
                nombres[j] <- nombres[j + 1];
                nombres[j + 1] <- tempNombre;
				
                // Intercambiar tasas de accidentabilidad
                tempTasa <- tasasAccidentabilidad[j];
                tasasAccidentabilidad[j] <- tasasAccidentabilidad[j + 1];
                tasasAccidentabilidad[j + 1] <- tempTasa;
            Fin Si
        Fin Para
    Fin Para
	
    // Mostrar nombres y tasas ordenados por accidentabilidad
    Escribir "Clientes ordenados por tasa de accidentabilidad (de mayor a menor):";
    Para i <- 1 Hasta N Con Paso 1 Hacer
        Escribir nombres[i], " - Tasa: ", tasasAccidentabilidad[i];
    Fin Para
	
FinProceso
