Proceso RegistroUsuarios
	
    // Definir la matriz de usuarios (100 filas y 10 columnas)
    Definir usuarios[100, 10] Como Cadena;
	
    // Definir constantes para las columnas de la matriz
    Definir COL_NOMBRE Como Entero <- 0;
    Definir COL_FECHA_NACIMIENTO Como Entero <- 1;
    Definir COL_RUN Como Entero <- 2;
    Definir COL_DIRECCION Como Entero <- 3;
    Definir COL_TELEFONO Como Entero <- 4;
    Definir COL_EMPLEADOS Como Entero <- 5;
    Definir COL_EXPERIENCIA Como Entero <- 6;
    Definir COL_DEPARTAMENTO Como Entero <- 7;
    Definir COL_FUNCION Como Entero <- 8;
    Definir COL_NOMBRE_SUPERIOR Como Entero <- 9;
	
    // Función para registrar usuarios
    Funcion registrarUsuario(tipoUsuario Como Cadena)
        Si tipoUsuario = "cliente" Entonces
            Escribir "Registro de Cliente:";
            // Solicitar datos específicos de cliente
            Escribir "Ingrese nombre:";
            Leer usuarios[0, COL_NOMBRE];
            Escribir "Ingrese fecha de nacimiento:";
            Leer usuarios[0, COL_FECHA_NACIMIENTO];
            Escribir "Ingrese RUN:";
            Leer usuarios[0, COL_RUN];
            Escribir "Ingrese dirección:";
            Leer usuarios[0, COL_DIRECCION];
            Escribir "Ingrese teléfono:";
            Leer usuarios[0, COL_TELEFONO];
            Escribir "Ingrese cantidad de empleados:";
            Leer usuarios[0, COL_EMPLEADOS];
        Fin Si
        
        Si tipoUsuario = "profesional" Entonces
            Escribir "Registro de Profesional:";
            // Solicitar datos específicos de profesional
            Escribir "Ingrese nombre:";
            Leer usuarios[0, COL_NOMBRE];
            Escribir "Ingrese fecha de nacimiento:";
            Leer usuarios[0, COL_FECHA_NACIMIENTO];
            Escribir "Ingrese RUN:";
            Leer usuarios[0, COL_RUN];
            Escribir "Ingrese años de experiencia:";
            Leer usuarios[0, COL_EXPERIENCIA];
            Escribir "Ingrese departamento:";
            Leer usuarios[0, COL_DEPARTAMENTO];
        Fin Si
        
        Si tipoUsuario = "administrativo" Entonces
            Escribir "Registro de Administrativo:";
            // Solicitar datos específicos de administrativo
            Escribir "Ingrese nombre:";
            Leer usuarios[0, COL_NOMBRE];
            Escribir "Ingrese fecha de nacimiento:";
            Leer usuarios[0, COL_FECHA_NACIMIENTO];
            Escribir "Ingrese RUN:";
            Leer usuarios[0, COL_RUN];
            Escribir "Ingrese función:";
            Leer usuarios[0, COL_FUNCION];
            Escribir "Ingrese nombre del superior:";
            Leer usuarios[0, COL_NOMBRE_SUPERIOR];
        Fin Si
    Fin Funcion
    
    // Función para mostrar usuarios
    Funcion mostrarUsuarios()
        Escribir "Listado de Usuarios:";
        Para fila <- 0 Hasta 99 Con Paso 1 Hacer
            Si usuarios[fila, COL_NOMBRE] <> "" Entonces
                Escribir "Usuario ", fila + 1, ":";
                Escribir "Nombre: ", usuarios[fila, COL_NOMBRE];
                Escribir "Fecha de Nacimiento: ", usuarios[fila, COL_FECHA_NACIMIENTO];
                Escribir "RUN: ", usuarios[fila, COL_RUN];
                Si usuarios[fila, COL_DIRECCION] <> "" Entonces
                    Escribir "Dirección: ", usuarios[fila, COL_DIRECCION];
                Fin Si
                Si usuarios[fila, COL_TELEFONO] <> "" Entonces
                    Escribir "Teléfono: ", usuarios[fila, COL_TELEFONO];
                Fin Si
                Si usuarios[fila, COL_EMPLEADOS] <> "" Entonces
                    Escribir "Cantidad de Empleados: ", usuarios[fila, COL_EMPLEADOS];
                Fin Si
                Si usuarios[fila, COL_EXPERIENCIA] <> "" Entonces
                    Escribir "Años de Experiencia: ", usuarios[fila, COL_EXPERIENCIA];
                Fin Si
                Si usuarios[fila, COL_DEPARTAMENTO] <> "" Entonces
                    Escribir "Departamento: ", usuarios[fila, COL_DEPARTAMENTO];
                Fin Si
                Si usuarios[fila, COL_FUNCION] <> "" Entonces
                    Escribir "Función: ", usuarios[fila, COL_FUNCION];
                Fin Si
                Si usuarios[fila, COL_NOMBRE_SUPERIOR] <> "" Entonces
                    Escribir "Nombre del Superior: ", usuarios[fila, COL_NOMBRE_SUPERIOR];
                Fin Si
                Escribir "";  // Salto de línea entre usuarios
            Fin Si
        Fin Para
    Fin Funcion
    
    // Función para contar usuarios por categoría
    Funcion contarUsuariosPorCategoria()
        Definir contadorClientes, contadorProfesionales, contadorAdministrativos Como Entero;
        contadorClientes <- 0;
        contadorProfesionales <- 0;
        contadorAdministrativos <- 0;
        
        Para fila <- 0 Hasta 99 Con Paso 1 Hacer
            Si usuarios[fila, COL_NOMBRE] <> "" Entonces
                Si usuarios[fila, COL_EMPLEADOS] <> "" Entonces
                    contadorClientes <- contadorClientes + 1;
                Sino Si usuarios[fila, COL_EXPERIENCIA] <> "" Entonces
						contadorProfesionales <- contadorProfesionales + 1;
					Sino Si usuarios[fila, COL_FUNCION] <> "" Entonces
							contadorAdministrativos <- contadorAdministrativos + 1;
						Fin Si
					Fin Si
				Fin Para
				
				Escribir "Resumen de Usuarios por Categoría:";
				Escribir "Clientes: ", contadorClientes;
				Escribir "Profesionales: ", contadorProfesionales;
				Escribir "Administrativos: ", contadorAdministrativos;
			Fin Funcion
			
			// Invocar la función para registrar usuarios (al menos uno de cada tipo)
			registrarUsuario("cliente");
			registrarUsuario("profesional");
			registrarUsuario("administrativo");
			
			// Mostrar la lista de usuarios registrados
			mostrarUsuarios();
			
			// Mostrar el resumen de usuarios por categoría
			contarUsuariosPorCategoria();

FinProceso
