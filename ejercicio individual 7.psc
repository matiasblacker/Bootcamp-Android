Proceso repeticion
    Definir valorHora Como Real;
    Definir cantidadTrabajadores Como Entero;
    Definir i, j, horas, horasSemanal Como Entero;
    Definir nombre Como Cadena;
    Definir edad Como Entero;
	
    Escribir "------------------ Pago ---------------------";
    Escribir "Ingrese el valor de la Hora:";
    Leer valorHora;
    Escribir "Ingrese numero de trabajadores:";
    Leer cantidadTrabajadores;
	
    Para i <- 1 Hasta cantidadTrabajadores Con Paso 1 Hacer
        Escribir "Nombre del Trabajador:";
        Leer nombre;
        Escribir "Edad:";
        Leer edad;
        horasSemanal <- 0;
        Para j <- 1 Hasta 5 Con Paso 1 Hacer
            Escribir "Horas trabajadas en el dia: ", j;
            Leer horas;
            horasSemanal <- horasSemanal + horas;
        Fin Para;
        Escribir "------------------------------------------";
        Escribir "Datos del Pago";
        Escribir "------------------------------------------";
        Escribir "Nombre del Trabajador: ", nombre;
        Escribir "Edad: ", edad;
        Escribir "Valor Hora: ", valorHora;
        Escribir "Total horas trabajadas: ", horasSemanal;
        Escribir "Sueldo semana es de ", nombre, ": $", horasSemanal * valorHora;
        Escribir "------------------------------------------";
    Fin Para;
FinProceso
