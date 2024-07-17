Proceso laPulga
	Definir tarifa, clientes, total como entero;
	tarifa <- 4500;
	
	Escribir "Ingrese el numero de comensales:";
	Leer clientes;
	
	Si clientes > 1 y clientes < 200 Entonces
		total <- tarifa * clientes;
		Escribir "La tarifa para el/los comensal/es es: ";
		Escribir total;
		
		Si clientes > 200 y clientes <= 300 Entonces
			tarifa <- 4200;
			total <- tarifa * clientes;
			Escribir "La tarifa para el/los comensal/es es: ";
			Escribir total;
		FinSi
		
	SiNo
		tarifa <- 4000;
		total <- tarifa * clientes;
		Escribir "La tarifa para el/los comensal/es es: ";
		Escribir total;
		
	FinSi
	
FinProceso
