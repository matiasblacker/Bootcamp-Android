Funcion ClasificarPostulante(calificacion1, calificacion2, calificacion3, calificacion4, calificacion5) -> Cadena;
    // Verificar condiciones para clasificación
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
    Escribir "Ingrese la calificación 1 (de 0 a 10):";
    Leer calificacion1;
    Escribir "Ingrese la calificación 2 (de 0 a 10):";
    Leer calificacion2;
    Escribir "Ingrese la calificación 3 (de 0 a 10):";
    Leer calificacion3;
    Escribir "Ingrese la calificación 4 (de 0 a 10):";
    Leer calificacion4;
    Escribir "Ingrese la calificación 5 (de 0 a 10):";
    Leer calificacion5;
	
    // Llamar a la función para clasificar al postulante
    clasificacion <- ClasificarPostulante(calificacion1, calificacion2, calificacion3, calificacion4, calificacion5);
	
    // Mostrar resultados
    Escribir "-------------------------------------";
    Escribir "Nombre del postulante:", nombre;
    Escribir "Calificaciones obtenidas:";
    Escribir "Calificación 1:", calificacion1;
    Escribir "Calificación 2:", calificacion2;
    Escribir "Calificación 3:", calificacion3;
    Escribir "Calificación 4:", calificacion4;
    Escribir "Calificación 5:", calificacion5;
    Escribir "Clasificación:", clasificacion;
    Escribir "-------------------------------------";
FinProceso;
