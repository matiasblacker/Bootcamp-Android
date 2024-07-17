Proceso RegistroUsuarios
    Definir cantidadUsuarios, i, tipo Como Entero;
    Definir nombre, fechaNacimiento, RUN, direccion, telefono, funcion, nombreSuperior, departamento Como Cadena;
		Definir cantidadEmpleados, aniosExperiencia Como Entero;
		
		Escribir "Ingrese la cantidad de usuarios a registrar:";
		Leer cantidadUsuarios;
		
		Para i <- 1 Hasta cantidadUsuarios Con Paso 1 Hacer
			Escribir "Ingrese el nombre:";
			Leer nombre;
			Escribir "Ingrese la fecha de nacimiento (DD/MM/AAAA):";
			Leer fechaNacimiento;
			Escribir "Ingrese el RUN:";
			Leer RUN;
			
			Escribir "Seleccione el tipo de usuario a registrar: (1=Cliente, 2=Profesional, 3=Administrativo)";
			Leer tipo;
			
			Segun tipo Hacer
				Caso 1:
					Escribir "Ingrese la direcci�n:";
					Leer direccion;
					Escribir "Ingrese el tel�fono:";
					Leer telefono;
					Escribir "Ingrese la cantidad de empleados:";
					Leer cantidadEmpleados;
					Escribir "------------------------------------------";
					Escribir "Datos del Cliente";
					Escribir "------------------------------------------";
					Escribir "Nombre: ", nombre;
					Escribir "Fecha de Nacimiento: ", fechaNacimiento;
					Escribir "RUN: ", RUN;
					Escribir "Direcci�n: ", direccion;
					Escribir "Tel�fono: ", telefono;
					Escribir "Cantidad de Empleados: ", cantidadEmpleados;
					Escribir "------------------------------------------";
				Fin Caso
            Caso 2:
                Escribir "Ingrese los a�os de experiencia:";
                Leer aniosExperiencia;
                Escribir "Ingrese el departamento:";
                Leer departamento;
                Escribir "------------------------------------------";
                Escribir "Datos del Profesional";
                Escribir "------------------------------------------";
                Escribir "Nombre: ", nombre;
                Escribir "Fecha de Nacimiento: ", fechaNacimiento;
                Escribir "RUN: ", RUN;
                Escribir "A�os de Experiencia: ", aniosExperiencia;
                Escribir "Departamento: ", departamento;
                Escribir "------------------------------------------";
            Fin Caso
		Caso 3:
			Escribir "Ingrese la funci�n:";
			Leer funcion;
                Escribir "Ingrese el nombre del superior:";
                Leer nombreSuperior;
                Escribir "------------------------------------------";
                Escribir "Datos del Administrativo";
                Escribir "------------------------------------------";
                Escribir "Nombre: ", nombre;
                Escribir "Fecha de Nacimiento: ", fechaNacimiento;
                Escribir "RUN: ", RUN;
                Escribir "Funci�n: ", funcion;
					Escribir "Nombre del Superior: ", nombreSuperior;
					Escribir "------------------------------------------";
				Fin Caso
            De Otro Modo:
                Escribir "Tipo de usuario no v�lido.";
		Fin Segun
    Fin Para
FinProceso

