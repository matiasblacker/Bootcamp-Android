Funcion ClasificarPostulante(calificacion1, calificacion2, calificacion3, calificacion4, calificacion5) -> Cadena;
    // Verificar condiciones para clasificaci�n
    Si (calificacion1 >= 9 y calificacion2 >= 9) o
		(calificacion1 >= 9 y calificacion3 >= 9) o
		(calificacion1 >= 9 y calificacion4 >= 9) o
		(calificacion1 >= 9 and calificacion5 >= 9) o
		(calificacion2 >= 9 and calificacion3 >= 9) o
		(calificacion2 >= 9 and calificacion4 >= 9) o
		(calificacion2 >= 9 and calificacion5 >= 9) o
		(calificacion3 >= 9 and calificacion4 >= 9) o
		(calificacion3 >= 9 and calificacion5 >= 9) o
		(calificacion4 >= 9 and calificacion5 >= 9) Entonces
        Retornar "CONTRATADO";
    FinSi;
	
    Si calificacion1 >= 7 y calificacion2 >= 7 y calificacion3 >= 7 y calificacion4 >= 7 y calificacion5 >= 7 Entonces
        Retornar "ARCHIVAR";
    FinSi;
	
    Retornar "RECHAZAR";
FinFuncion;

// Programa principal
Proceso ClasificacionPostulante;
    // Declarar variables
    Definir nombre Como Cadena;
    Definir calificacion1, calificacion2, calificacion3, calificacion4, calificacion5 Como Real;
    Definir clasificacion Como Cadena;
	
    // Solicitar datos al usuario
    Escribir "Ingrese el nombre del postulante:";
    Leer nombre;
    Escribir "Ingrese la calificaci�n 1 (de 0 a 10):";
    Leer calificacion1;
    Escribir "Ingrese la calificaci�n 2 (de 0 a 10):";
    Leer calificacion2;
    Escribir "Ingrese la calificaci�n 3 (de 0 a 10):";
    Leer calificacion3;
    Escribir "Ingrese la calificaci�n 4 (de 0 a 10):";
    Leer calificacion4;
    Escribir "Ingrese la calificaci�n 5 (de 0 a 10):";
    Leer calificacion5;
	
    // Llamar a la funci�n para clasificar al postulante
    clasificacion <- ClasificarPostulante(calificacion1, calificacion2, calificacion3, calificacion4, calificacion5);
	
    // Mostrar resultados
    Escribir "-------------------------------------";
    Escribir "Nombre del postulante:", nombre;
    Escribir "Calificaciones obtenidas:";
    Escribir "Calificaci�n 1:", calificacion1;
    Escribir "Calificaci�n 2:", calificacion2;
    Escribir "Calificaci�n 3:", calificacion3;
    Escribir "Calificaci�n 4:", calificacion4;
    Escribir "Calificaci�n 5:", calificacion5;
    Escribir "Clasificaci�n:", clasificacion;
    Escribir "-------------------------------------";
FinProceso;
