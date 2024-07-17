Proceso CalcularDiagonalesMatriz
    
    Definir matriz[4, 4] Como Entero;
    Definir sumaDiagonalPrincipal, sumaDiagonalSuperior, sumaDiagonalInferior Como Entero;
    Definir i, j Como Entero;
	
    // Inicialización d
    matriz[0, 0] <- 1; matriz[0, 1] <- 2; matriz[0, 2] <- 3; matriz[0, 3] <- 4;
    matriz[1, 0] <- 5; matriz[1, 1] <- 6; matriz[1, 2] <- 7; matriz[1, 3] <- 8;
    matriz[2, 0] <- 9; matriz[2, 1] <- 10; matriz[2, 2] <- 11; matriz[2, 3] <- 12;
    matriz[3, 0] <- 13; matriz[3, 1] <- 14; matriz[3, 2] <- 15; matriz[3, 3] <- 16;
	
    //sumas
    sumaDiagonalPrincipal <- 0;
    sumaDiagonalSuperior <- 0;
    sumaDiagonalInferior <- 0;
	
    // Calcular suma de la diagonal principal, diagonal superior y diagonal inferior
    Para i <- 0 Hasta 3 Con Paso 1 Hacer
        Para j <- 0 Hasta 3 Con Paso 1 Hacer
            Si i = j Entonces
                sumaDiagonalPrincipal <- sumaDiagonalPrincipal + matriz[i, j];
            Fin Si
			
            Si i < j Entonces
                sumaDiagonalSuperior <- sumaDiagonalSuperior + matriz[i, j];
            Fin Si
			
            Si i > j Entonces
                sumaDiagonalInferior <- sumaDiagonalInferior + matriz[i, j];
            Fin Si
        Fin Para
    Fin Para
	
    // Mostrar resultados
    Escribir "Suma de la diagonal principal: ", sumaDiagonalPrincipal;
    Escribir "Suma de la diagonal superior: ", sumaDiagonalSuperior;
    Escribir "Suma de la diagonal inferior: ", sumaDiagonalInferior;
	
    // Verificar la condición
    Si (sumaDiagonalSuperior + sumaDiagonalInferior) < sumaDiagonalPrincipal Entonces
        Escribir "La suma de la diagonal superior y la diagonal inferior es menor que la diagonal principal.";
    Sino
        Escribir "La suma de la diagonal superior y la diagonal inferior no es menor que la diagonal principal.";
    Fin Si
	
FinProceso
