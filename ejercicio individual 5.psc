Proceso pcr
	
    Definir haSalidoDelPais,tieneContagiosCercanos,quiereVolverANormalidad,debeHacerCuarentena,debeHacerPCR Como Logico;
	
    haSalidoDelPais <- Verdadero;
    tieneContagiosCercanos <- Falso;
    quiereVolverANormalidad <- Verdadero;
	
    Si haSalidoDelPais Entonces
        debeHacerCuarentena <- Verdadero;
    Sino
        debeHacerCuarentena <- Falso;
    FinSi
	
    Si haSalidoDelPais Y quiereVolverANormalidad Entonces
        debeHacerPCR <- Verdadero;
    Sino
        debeHacerPCR <- Falso;
    FinSi
	
    
    Escribir "Evaluaci�n 1:";
    Escribir "Ha salido del pa�s: ", haSalidoDelPais;
    Escribir "Tiene contagios cercanos: ", tieneContagiosCercanos;
    Escribir "Quiere volver a la normalidad: ", quiereVolverANormalidad;
    Escribir "Debe hacer cuarentena: ", debeHacerCuarentena;
    Escribir "Debe hacerse PCR: ", debeHacerPCR;
	
  
    haSalidoDelPais <- Falso;
    tieneContagiosCercanos <- Falso;
    quiereVolverANormalidad <- Verdadero;
	
    
    Si haSalidoDelPais Entonces
        debeHacerCuarentena <- Verdadero;
    Sino
        debeHacerCuarentena <- Falso;
    FinSi
	
    Si haSalidoDelPais Y quiereVolverANormalidad Entonces
        debeHacerPCR <- Verdadero;
    Sino
        debeHacerPCR <- Falso;
    FinSi
	
    
    Escribir "Evaluaci�n 2:";
    Escribir "Ha salido del pa�s: ", haSalidoDelPais;
    Escribir "Tiene contagios cercanos: ", tieneContagiosCercanos;
    Escribir "Quiere volver a la normalidad: ", quiereVolverANormalidad;
    Escribir "Debe hacer cuarentena: ", debeHacerCuarentena;
    Escribir "Debe hacerse PCR: ", debeHacerPCR;
FinProceso
