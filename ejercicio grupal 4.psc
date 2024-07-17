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
					Escribir "Ingrese la dirección:";
					Leer direccion;
					Escribir "Ingrese el teléfono:";
					Leer telefono;
					Escribir "Ingrese la cantidad de empleados:";
					Leer cantidadEmpleados;
					Escribir "------------------------------------------";
					Escribir "Datos del Cliente";
					Escribir "------------------------------------------";
					Escribir "Nombre: ", nombre;
					Escribir "Fecha de Nacimiento: ", fechaNacimiento;
					Escribir "RUN: ", RUN;
					Escribir "Dirección: ", direccion;
					Escribir "Teléfono: ", telefono;
					Escribir "Cantidad de Empleados: ", cantidadEmpleados;
					Escribir "------------------------------------------";
				Fin Caso
            Caso 2:
                Escribir "Ingrese los años de experiencia:";
                Leer aniosExperiencia;
                Escribir "Ingrese el departamento:";
                Leer departamento;
                Escribir "------------------------------------------";
                Escribir "Datos del Profesional";
                Escribir "------------------------------------------";
                Escribir "Nombre: ", nombre;
                Escribir "Fecha de Nacimiento: ", fechaNacimiento;
                Escribir "RUN: ", RUN;
                Escribir "Años de Experiencia: ", aniosExperiencia;
                Escribir "Departamento: ", departamento;
                Escribir "------------------------------------------";
            Fin Caso
		Caso 3:
			Escribir "Ingrese la función:";
			Leer funcion;
                Escribir "Ingrese el nombre del superior:";
                Leer nombreSuperior;
                Escribir "------------------------------------------";
                Escribir "Datos del Administrativo";
                Escribir "------------------------------------------";
                Escribir "Nombre: ", nombre;
                Escribir "Fecha de Nacimiento: ", fechaNacimiento;
                Escribir "RUN: ", RUN;
                Escribir "Función: ", funcion;
					Escribir "Nombre del Superior: ", nombreSuperior;
					Escribir "------------------------------------------";
				Fin Caso
            De Otro Modo:
                Escribir "Tipo de usuario no válido.";
		Fin Segun
    Fin Para
FinProceso

