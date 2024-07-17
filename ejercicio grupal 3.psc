Proceso seguros
	
	Definir procedimiento Como Logico; //Aqui el trabajador cuida los procedimientos de seguridad
    Definir accidente Como Logico;//Aqui es cuando ocurre un accidente
    Definir manual Como Logico;//El trabajador si leyo el manual
    Definir cuasiAccidente Como Logico;//cuando ocurre un incidente, o sea un casi accidente
	
    procedimiento <- Verdadero;
    manual <- Verdadero;
    cuasiAccidente <- Falso;
	
    accidente<- Falso;
	
    Si No procedimiento Entonces
        accidente <- Verdadero;
    FinSi;
	
    Si No manual Entonces
        accidente <- Verdadero;
    FinSi;
	
    Si accidente = Falso Y cuasiAccidente Entonces
        manual <- Verdadero;
    FinSi;
	
    Escribir "El trabajador cuida los procedimientos de seguridad: ", procedimiento;
    Escribir "Ocurre un accidente: ", accidente;
    Escribir "El trabajador lee el manual de seguridad interno: ", manual;
    Escribir "El trabajador ha sufrido incidentes: ", cuasiAccidente;
	
    procedimiento <- Falso;
    manual <- Verdadero;
    cuasiAccidente <- Verdadero;
	
    accidente <- Falso;
	
    Si No procedimiento Entonces
        accidente <- Verdadero;
    FinSi;
	
    Si No manual Entonces
        accidente <- Verdadero;
    FinSi;
	
    Si accidente= Falso Y cuasiAccidente = Falso Entonces
        procedimiento <- Verdadero;
        manual <- Verdadero;
    FinSi;
	
    Escribir "El trabajador cuida los procedimientos de seguridad: ", procedimiento;
    Escribir "Ocurre un accidente: ", accidente;
    Escribir "El trabajador lee el manual de seguridad interno: ", manual;
    Escribir "El trabajador ha sufrido incidentes: ", cuasiAccidente;
	
FinProceso
