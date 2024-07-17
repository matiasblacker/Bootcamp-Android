Proceso RegistroUsuarios
    // Definir matriz para almacenar los usuarios
    Definir usuarios[100, 10] Como Cadena;
	
    // Definir variables para control de iteración y almacenamiento
    Definir cantidadUsuarios, tipoUsuario Como Entero;
    Definir nombre, fechaNacimiento, run Como Cadena;
    Definir direccion, telefono, cantidadEmpleados Como Cadena;
    Definir anosExperiencia, departamento Como Cadena;
    Definir funcion, nombreSuperior Como Cadena;
		Definir columna Como Entero;
		
		// Inicialización de la matriz con valores vacíos
		Para i <- 0 Hasta 99 Con Paso 1 Hacer
			Para j <- 0 Hasta 9 Con Paso 1 Hacer
				usuarios[i, j] <- "";
			Fin Para
		Fin Para
		
		// Solicitar cantidad de usuarios a ingresar
		Escribir "Ingrese la cantidad de usuarios a registrar:";
		Leer cantidadUsuarios;
		
		// Validar que la cantidad de usuarios no supere 100
		Si cantidadUsuarios > 100 Entonces
			Escribir "La cantidad de usuarios excede el límite de la matriz.";
			Detener Proceso;
			Fin Si
			
			// Iterar para cada usuario a ingresar
			Para u <- 1 Hasta cantidadUsuarios Con Paso 1 Hacer
				// Solicitar tipo de usuario (1: Cliente, 2: Profesional, 3: Administrativo)
				Escribir "Ingrese el tipo de usuario (1: Cliente, 2: Profesional, 3: Administrativo) para el usuario ", u, ":";
				Leer tipoUsuario;
				
				// Solicitar datos comunes a todos los perfiles
				Escribir "Ingrese el nombre del usuario ", u, ":";
				Leer nombre;
				Escribir "Ingrese la fecha de nacimiento del usuario ", u, ":";
				Leer fechaNacimiento;
				Escribir "Ingrese el RUN del usuario ", u, ":";
				Leer run;
				
				// Según el tipo de usuario, solicitar y almacenar los campos correspondientes
				Segun tipoUsuario Hacer
					1:  // Cliente
						Escribir "Ingrese la dirección del cliente:";
						Leer direccion;
						Escribir "Ingrese el teléfono del cliente:";
						Leer telefono;
						Escribir "Ingrese la cantidad de empleados de la empresa:";
						Leer cantidadEmpleados;
						// Almacenar en la matriz
						usuarios[u-1, 0] <- nombre;
						usuarios[u-1, 1] <- fechaNacimiento;
						usuarios[u-1, 2] <- run;
						usuarios[u-1, 3] <- direccion;
						usuarios[u-1, 4] <- telefono;
						usuarios[u-1, 5] <- cantidadEmpleados;
						
					2:  // Profesional
						Escribir "Ingrese los años de experiencia del profesional:";
						Leer anosExperiencia;
						Escribir "Ingrese el departamento del profesional:";
						Leer departamento;
						// Almacenar en la matriz
						usuarios[u-1, 0] <- nombre;
						usuarios[u-1, 1] <- fechaNacimiento;
						usuarios[u-1, 2] <- run;
						usuarios[u-1, 6] <- anosExperiencia;
						usuarios[u-1, 7] <- departamento;
						
					3:  // Administrativo
						Escribir "Ingrese la función del administrativo:";
						Leer funcion;
							Escribir "Ingrese el nombre del superior del administrativo:";
							Leer nombreSuperior;
							// Almacenar en la matriz
							usuarios[u-1, 0] <- nombre;
							usuarios[u-1, 1] <- fechaNacimiento;
							usuarios[u-1, 2] <- run;
							usuarios[u-1, 8] <- funcion;
								usuarios[u-1, 9] <- nombreSuperior;
						Fin Segun
					Fin Para
					
					// Mostrar la matriz completa con los usuarios ingresados
					Escribir "Matriz de usuarios registrados:";
					Para i <- 0 Hasta cantidadUsuarios-1 Con Paso 1 Hacer
						Para j <- 0 Hasta 9 Con Paso 1 Hacer
							Escribir usuarios[i, j];
							Escribir " ";
						Fin Para
						Escribir "";  // Salto de línea entre usuarios
					Fin Para
					
FinProceso
