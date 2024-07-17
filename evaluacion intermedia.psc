Algoritmo Evaluacion_Intermedia
	Dimension matriz(100,10)
	Definir usuarios, opc Como Entero
	
	Repetir
		Escribir "Ingrese cantidad de usuarios no pudiendo ser más de 100"
		Leer usuarios
	Hasta Que usuarios<100 y usuarios>0
	
	Para k<-1 Hasta usuarios Con Paso 1 Hacer
		perfil=""
		IngresarUsuario(k,matriz)
	Fin Para
	
	Repetir
		Escribir "______"
		Escribir "MENU"
		Escribir "______"
		Escribir "1. Registrar usuario"
		Escribir "2. Mostrar usuarios"
		Escribir "3. Contar usuarios por categoría"
		Escribir "4. Modificar usuario"
		Escribir "5. Eliminar usuario"
		Escribir "6. Salir"
		Escribir "______"
		Escribir "Ingrese una opcion"
		leer opt
		
		Segun opt Hacer
			1:
				Escribir "Seleccionaste opción: Registrar usuario"
				IngresarUsuario(usuarios,matriz)
			2: 
				Escribir "Seleccionaste opción: Mostrar Usuarios"
				mostrarUsuarios(matriz, usuarios)
			3:
				Escribir "Seleccionaste opción: Contar Usuarios por categoria"
				mostrarUsuariosPorCategoria(matriz,usuarios)
			4:
				Escribir "Seleccionaste opción: Modificar usuario"
				modificarUsuario(usuarios,matriz)
				 
			5:				
				Escribir "Seleccionaste opción: Eliminar usuario"
				eliminarUsuario(usuarios, matriz)
				
			De Otro Modo:
				Escribir "Ingrese una opción válida"
		FinSegun
		
	Hasta Que (opt == 6);
	
FinAlgoritmo

Funcion IngresarUsuario(x, matriz Por Referencia)
	
	mientras matriz(x,1)="" Hacer
		Escribir "Ingrese nombre"
		Leer matriz(x,1)
	FinMientras
	mientras matriz(x,2)="" Hacer
		Escribir "Ingrese fecha de nacimiento"
		Leer matriz(x,2)
	FinMientras
	mientras matriz(x,3)="" Hacer
		Escribir "Ingrese rut con digito verificador"
		leer matriz(x,3)
	FinMientras
	
	mientras perfil<>"cliente" y perfil<>"administrativo" y perfil<>"profesional" Hacer
		Escribir "Ingrese el perfil del usuario: cliente / profesional / administrativo"
		Leer perfil
	FinMientras
	
	Si perfil == "cliente" Entonces
		mientras matriz(x,4)="" Hacer
			Escribir "Ingrese direccion"
			Leer matriz(x,4)
		FinMientras
		mientras matriz(x,5)="" Hacer
			Escribir "Ingrese numero de telefono"
			Leer matriz(x,5)
		FinMientras
		mientras matriz(x,6)="" Hacer
			Escribir "Ingrese Cantidad de empleados"
			Leer matriz(x,6)
		FinMientras
		
	SiNo
		
		Si perfil == "profesional" Entonces
			mientras matriz(x,7)="" Hacer
				Escribir "Años de experiencia"
				Leer matriz(x,7)
			FinMientras
			mientras matriz(x,8)="" Hacer
				Escribir "Ingrese Departamento"
				Leer matriz(x,8)
			FinMientras
		SiNo
			
			si perfil == "administrativo" Entonces
				mientras matriz(x,9)="" Hacer
					Escribir "Ingrese Funcion"
					Leer matriz(x,9)
				FinMientras
				mientras matriz(x,10)="" Hacer
					Escribir "Nombre Superior"
					Leer matriz(x,10)
				FinMientras
				
			Fin Si
		Fin si
	Fin si
Fin Funcion

Funcion  mostrarUsuariosPorCategoria ( matriz Por Referencia, l)
	Para f=1 Hasta l Hacer
		si matriz(f,4) <>"" Entonces
			clientes=contarUsuariosPorCategoria (clientes)
			Escribir Sin Saltar "Cliente "	
		SiNo
			si matriz(f,7)<>"" Entonces
				Escribir Sin Saltar "Profesional "
				profesionales=contarUsuariosPorCategoria (profesionales)
			SiNo
				Escribir Sin Saltar "Administrativo "
				administrativos=contarUsuariosPorCategoria (administrativos)
			FinSi
		FinSi
		Para c=1 hasta 10 Hacer
			Escribir Sin Saltar matriz(f,c), " "
		FinPara
		Escribir ""
	FinPara
	escribir "Cantidad de clientes: ",clientes
	escribir "Cantidad de profesionales: ",profesionales
	escribir "Cantidad de administrativos: ",administrativos
Fin Funcion

Funcion cantidad <- contarUsuariosPorCategoria ( variable Por Referencia)
	cantidad=variable+1
Fin Funcion

Funcion mostrarUsuarios(matriz Por Referencia, total_usuarios)
	Para i <- 1 Hasta total_usuarios Con Paso 1 Hacer
		Si matriz(i,1) <> "" Entonces
			Escribir "Usuario ", i, ":"
			Para j <- 1 Hasta 10 Hacer
				Si matriz(i,j) <> "" Entonces
					Escribir Sin Saltar matriz(i,j), " "
				FinSi
			FinPara
			Escribir ""
		FinSi
	FinPara
Fin Funcion

Funcion modificarUsuario(usuarios Por Referencia, matriz Por Referencia)
	
	
	Escribir "Ingrese su RUT"
	Leer rut
	
	//Si
	
	Para k<-1 Hasta usuarios Con Paso 1 Hacer
		si matriz(k,3) == rut Entonces
			Escribir "encontré  rut"
			matriz(k,1) = ""
			matriz(k,2) = ""
			matriz(k,3) = ""
			matriz(k,4) = ""
			matriz(k,5) = ""
			matriz(k,6) = ""
			matriz(k,7) = ""
			matriz(k,8) = ""
			matriz(k,9) = ""
			matriz(k,10) = ""
			IngresarUsuario(k,matriz)
		SiNo
			Escribir "no encontré rut"
			
		FinSi
	Fin Para
	
	//FinSi
	
Fin Funcion

Funcion eliminarUsuario(usuarios Por Referencia, matriz Por Referencia)
	Escribir "Ingrese su RUT"
	Leer rut
	Para k<-1 Hasta usuarios Con Paso 1 Hacer
		si matriz(k,3) == rut Entonces
			Escribir "Usuario eliminado"
			Para l<-k Hasta usuarios - 1 Con Paso 1 Hacer
				matriz(l,1) = matriz(l+1,1)
				matriz(l,2) = matriz(l+1,2)
				matriz(l,3) = matriz(l+1,3)
				matriz(l,4) = matriz(l+1,4)
				matriz(l,5) = matriz(l+1,5)
				matriz(l,6) = matriz(l+1,6)
				matriz(l,7) = matriz(l+1,7)
				matriz(l,8) = matriz(l+1,8)
				matriz(l,9) = matriz(l+1,9)
				matriz(l,10) = matriz(l+1,10)
			FinPara
			matriz(usuarios,1) = ""
			matriz(usuarios,2) = ""
			matriz(usuarios,3) = ""
			matriz(usuarios,4) = ""
			matriz(usuarios,5) = ""
			matriz(usuarios,6) = ""
			matriz(usuarios,7) = ""
			matriz(usuarios,8) = ""
			matriz(usuarios,9) = ""
			matriz(usuarios,10) = ""
			usuarios=usuarios-1
			
					
		FinSi
	Fin Para
FinFuncion