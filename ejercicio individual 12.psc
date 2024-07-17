Proceso MatrizTraspuesta
    // Definir la matriz original de 5 filas y 3 columnas
    Definir matrizOriginal[5, 3] Como Entero;
    // Definir la matriz traspuesta de 3 filas y 5 columnas
    Definir matrizTraspuesta[3, 5] Como Entero;
	
    // Llenar la matriz original con valores aleatorios
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Para j <- 0 Hasta 2 Con Paso 1 Hacer
            matrizOriginal[i, j] <- AZAR(1, 100);  // Genera números aleatorios entre 1 y 100
        Fin Para
    Fin Para
	
    // Calcular la matriz traspuesta
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Para j <- 0 Hasta 2 Con Paso 1 Hacer
            matrizTraspuesta[j, i] <- matrizOriginal[i, j];
        Fin Para
    Fin Para
	
    // Mostrar la matriz original
    Escribir "Matriz Original:";
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Para j <- 0 Hasta 2 Con Paso 1 Hacer
            Escribir matrizOriginal[i, j], " ";
        Fin Para
        Escribir "";  // Salto de línea entre filas
    Fin Para
	
    // Mostrar la matriz traspuesta
    Escribir "Matriz Traspuesta:";
    Para i <- 0 Hasta 2 Con Paso 1 Hacer
        Para j <- 0 Hasta 4 Con Paso 1 Hacer
            Escribir matrizTraspuesta[i, j], " ";
        Fin Para
        Escribir "";  // Salto de línea entre filas
    Fin Para
	
FinProceso
