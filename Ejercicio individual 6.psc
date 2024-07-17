Proceso sin_titulo
	
    Definir V1, V2, V3 Como Logico;
    V1 <- (('A' > 'B') O (Longitud('Hola mundo') = 10));
    Escribir "V1 = ", V1; // aqui se espera verdadero porque la primera condicion dice que A es mayor a B si veo por orden en
	//el abecedario es menor, y la longitud de hola mundo si es 10, contando los espacios, entonce si seria verdadero
	// porque la condicion O espera que 1 de las dos condiciones se cumpla.
	
    
    V2 <- No((5 + 2) < 7) Y No((7 > 9) O (3 < 5) Y (4 = 3));
    Escribir "V2 = ", V2; //Aqui No invierte el resultado, entonces la primera expresion seria verdadera, la segunda tambien
	//la tercera es falsa y la cuarta verdadera, asi que cumple por lo menos una.
	
    
    V3 <- ((2 * 3 + 5 - 7) > (2 * (2 + 5))) O ((10 - 5) < 20);
    Escribir "V3 = ", V3; // La primera expresion es falsa y la segunda es verdadera,
	//porque la condicion O espera que 1 de las dos condiciones se cumpla.
FinProceso 
