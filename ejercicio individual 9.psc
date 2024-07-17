Proceso Divisores
	Definir n, i Como Entero;
	// Leer el número
	Escribir 'Ingrese un número entero:';
	Leer n;
	// Inicializar i a 1
	i <- 1;
	// Ciclo para encontrar divisores
	Mientras i<=n Hacer
		// Verificar si i es divisor de n
		Si n MOD i=0 Entonces
			// Imprimir i como divisor
			Escribir i;
		FinSi
		// Incrementar i
		i <- i+1;
	FinMientras
FinProceso
