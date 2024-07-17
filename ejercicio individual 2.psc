Proceso ingreso
	Definir usuario, usuarioValido Como Caracter;
	Definir clave Como Entero;
	
	clave <- 1234;
	usuario <- "matias";
	
	Escribir "Ingrese su usuario:";
	Leer usuarioValido;
	Si usuarioValido <> usuario Entonces
		Escribir "El usuario no existe o esta caducado";
	sino 
		Escribir "Ingrese la clave: ";
		Leer clave;
		si clave <> 1234 Entonces
			Escribir "Clave incorrecta!";
		SiNo
			Escribir "Haz ingresado al portal, bienvenido: " + usuario;
		FinSi
		
	FinSi
	
FinProceso
