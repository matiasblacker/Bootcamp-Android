// Definici�n de la funci�n ConversionMoneda
Funcion ConversionMoneda(monto Como Real, tipodivisa Como Cadena) -> Real
    Definir montoConvertido Como Real;
	
    // Definir los factores de conversi�n para cada divisa
    Definir factorDolar Como Real <- 800;  // Tipo de cambio del d�a en pesos chilenos por d�lar
    Definir factorEuro Como Real <- 920;  // Tipo de cambio del d�a en pesos chilenos por euro
    Definir factorYen Como Real <- 7.5;    // Tipo de cambio del d�a en pesos chilenos por yen japon�s
	
    // Realizar la conversi�n seg�n el tipo de divisa ingresado
    Segun tipodivisa Hacer
        "DOLAR":
            montoConvertido <- monto * factorDolar;
        "EURO":
            montoConvertido <- monto * factorEuro;
        "YEN":
            montoConvertido <- monto * factorYen;
        De Otro Modo:
            Escribir "Divisa no v�lida";
    Fin Segun
	
    Retornar montoConvertido;
Fin Funcion

// Programa principal para probar la funci�n ConversionMoneda
Proceso ProgramaConversionMoneda
    // Declarar variables
    Definir montoIngresado Como Real;
    Definir tipoDivisa Como Cadena;
	
    // Solicitar al usuario ingresar el monto y el tipo de divisa
    Escribir "Ingrese el monto a convertir:";
    Leer montoIngresado;
    Escribir "Ingrese el tipo de divisa (DOLAR, EURO, YEN):";
    Leer tipoDivisa;
	
    // Invocar la funci�n ConversionMoneda y almacenar el resultado
    Definir montoConvertido Como Real;
    montoConvertido <- ConversionMoneda(montoIngresado, tipoDivisa);
	
    // Mostrar el resultado de la conversi�n
    Escribir "El monto convertido a pesos chilenos es:", montoConvertido;
FinProceso
