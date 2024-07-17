Proceso RegistroVentasTikiTaka
    // Definir variables
    Definir categoria Como Cadena;
    Definir monto Como Real;
    Definir ventasMayor1000, ventasMayor500MenorIgual1000, ventasMenorIgual500 Como Entero;
    Definir totalModa, totalElectronica, totalTelefonia, totalMuebles, totalGlobal Como Real;
	
    // Inicializar contadores y acumuladores
    ventasMayor1000 <- 0;
    ventasMayor500MenorIgual1000 <- 0;
    ventasMenorIgual500 <- 0;
    totalModa <- 0;
    totalElectronica <- 0;
    totalTelefonia <- 0;
    totalMuebles <- 0;
    totalGlobal <- 0;
	
    // Ciclo para registrar ventas
    Repetir
        // Solicitar categoría de venta
        Escribir "Ingrese la categoría de la venta (MODA, ELECTRONICA, TELEFONIA, MUEBLES, SALIR):";
        Leer categoria;
		
        // Verificar si la categoría es "SALIR"
        Si categoria = "SALIR" Entonces
            Salir;
        FinSi
		
        // Solicitar monto de venta
        Escribir "Ingrese el monto de la venta:";
        Leer monto;
		
        // Categorizar la venta según el monto
        Si monto > 1000 Entonces
            ventasMayor1000 <- ventasMayor1000 + 1;
			SinoSi monto > 500 Entonces
            ventasMayor500MenorIgual1000 <- ventasMayor500MenorIgual1000 + 1;
        Sino
            ventasMenorIgual500 <- ventasMenorIgual500 + 1;
        FinSi
		
        // Acumular el monto en la categoría correspondiente
        Segun categoria Hacer
            Caso "MODA":
                totalModa <- totalModa + monto;
            Fin Caso
		Caso "ELECTRONICA":
			totalElectronica <- totalElectronica + monto;
		Fin Caso
	Caso "TELEFONIA":
		totalTelefonia <- totalTelefonia + monto;
	Fin Caso
Caso "MUEBLES":
	totalMuebles <- totalMuebles + monto;
Fin Caso
De Otro Modo:
	Escribir "Categoría no válida.";
Fin Segun

// Acumular el monto total global
totalGlobal <- totalGlobal + monto;
Hasta Que categoria = "SALIR"

// Mostrar resultados
Escribir "------------------------------------------";
Escribir "Resumen de Ventas";
Escribir "------------------------------------------";
Escribir "Ventas mayores a $1000: ", ventasMayor1000;
Escribir "Ventas mayores a $500 y menores o iguales a $1000: ", ventasMayor500MenorIgual1000;
Escribir "Ventas menores o iguales a $500: ", ventasMenorIgual500;
Escribir "------------------------------------------";
Escribir "Total vendido en MODA: $", totalModa;
Escribir "Total vendido en ELECTRONICA: $", totalElectronica;
Escribir "Total vendido en TELEFONIA: $", totalTelefonia;
Escribir "Total vendido en MUEBLES: $", totalMuebles;
Escribir "------------------------------------------";
Escribir "Total global vendido: $", totalGlobal;
Escribir "------------------------------------------";
FinProceso
