// Definición de la función ConversionMoneda
Funcion ConversionMoneda(monto Como Real, tipodivisa Como Cadena) -> Real
    Definir montoConvertido Como Real;
	
    // Definir los factores de conversión para cada divisa
    Definir factorDolar Como Real <- 800;  // Tipo de cambio del día en pesos chilenos por dólar
    Definir factorEuro Como Real <- 920;  // Tipo de cambio del día en pesos chilenos por euro
    Definir factorYen Como Real <- 7.5;    // Tipo de cambio del día en pesos chilenos por yen japonés
	
    // Realizar la conversión según el tipo de divisa ingresado
    Segun tipodivisa Hacer
        "DOLAR":
            montoConvertido <- monto * factorDolar;
        "EURO":
            montoConvertido <- monto * factorEuro;
        "YEN":
            montoConvertido <- monto * factorYen;
        De Otro Modo:
            Escribir "Divisa no válida";
    Fin Segun
	
    Retornar montoConvertido;
Fin Funcion

// Programa principal para probar la función ConversionMoneda
Proceso ProgramaConversionMoneda
    // Declarar variables
    Definir montoIngresado Como Real;
    Definir tipoDivisa Como Cadena;
	
    // Solicitar al usuario ingresar el monto y el tipo de divisa
    Escribir "Ingrese el monto a convertir:";
    Leer montoIngresado;
    Escribir "Ingrese el tipo de divisa (DOLAR, EURO, YEN):";
    Leer tipoDivisa;
	
    // Invocar la función ConversionMoneda y almacenar el resultado
    Definir montoConvertido Como Real;
    montoConvertido <- ConversionMoneda(montoIngresado, tipoDivisa);
	
    // Mostrar el resultado de la conversión
    Escribir "El monto convertido a pesos chilenos es:", montoConvertido;
FinProceso
