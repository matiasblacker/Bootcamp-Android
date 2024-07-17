Proceso lanaChilena
	Definir precioInicialA, precioInicialB, gananciaTotal, gananciaTipoB_tam1, gananciaTipoA_tam2 como real;
    Definir tipoA_tam1, tipoA_tam2, tipoB_tam1, tipoB_tam2 como entero;
    
    precioInicialA <- 1500 ; 
    precioInicialB <- 1200;  

    tipoA_tam2 <- 300;
    tipoB_tam1 <- 200;
    
    gananciaTipoA_tam2 <- precioInicialA * tipoA_tam2 + 300;
    gananciaTipoB_tam1 <- precioInicialB * tipoB_tam1 - 50;
    gananciaTotal <- gananciaTipoA_tam2 + gananciaTipoB_tam1;
    
    
    Escribir "Ganancia total por la venta de lana:";
    Escribir "Tipo A tamaño 2: " + ConvertirATexto( gananciaTipoA_tam2);
    Escribir "Tipo B tamaño 1: "+ ConvertirATexto( gananciaTipoB_tam1);
    Escribir "Ganancia total: " + ConvertirATexto(gananciaTotal);
	
FinProceso
