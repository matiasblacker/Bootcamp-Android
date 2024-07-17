Proceso DatosClientes
    Definir rut, nombres, apellidos, telefono, afp, direccion, comuna como cadena;
    Definir sistemaSalud como entero;
    Definir edad como entero;
    
    
    Escribir "Ingrese RUT (menor a 99.999.999):";
    Leer rut;
    Si Longitud(rut) > 8 Entonces
        Escribir "Error: El RUT debe ser un número menor a 99.999.999.";
    FinSi
    
    
    Escribir "Ingrese Nombres:";
    Leer nombres;
    Si Longitud(nombres) = 0 Entonces
        Escribir "Error: El campo Nombres es obligatorio.";
    FinSi
    
   
    Escribir "Ingrese Apellidos:";
    Leer apellidos;
    Si Longitud(apellidos) = 0 Entonces
        Escribir "Error: El campo Apellidos es obligatorio.";
    FinSi
    
    
    Escribir "Ingrese Teléfono (máximo 15 caracteres):";
    Leer telefono;
    Si Longitud(telefono) > 15 Entonces
        Escribir "Error: El teléfono no debe exceder los 15 caracteres.";
    FinSi
    
    
    Escribir "Ingrese AFP:";
    Leer afp;
    Si Longitud(afp) = 0 Entonces
        Escribir "Error: El campo AFP es obligatorio.";
    FinSi
    
   
    Escribir "Ingrese Sistema de Salud (1: Fonasa, 2: Isapre):";
    Leer sistemaSalud;
    Si sistemaSalud <> 1 Y sistemaSalud <> 2 Entonces
        Escribir "Error: Debe ingresar 1 (Fonasa) o 2 (Isapre) como sistema de salud.";
    FinSi
    
    
    Escribir "Ingrese Dirección (máximo 50 caracteres):";
    Leer direccion;
    Si Longitud(direccion) > 50 Entonces
        Escribir "Error: La dirección no debe exceder los 50 caracteres.";
    FinSi
    
    
    Escribir "Ingrese Comuna:";
    Leer comuna;
    Si Longitud(comuna) = 0 Entonces
        Escribir "Error: El campo Comuna es obligatorio.";
    FinSi
    
    
    Escribir "Ingrese Edad (menor a 120 años):";
    Leer edad;
    Si edad >= 120 Entonces
        Escribir "Error: La edad debe ser menor a 120 años.";
    FinSi
    
    
    Escribir "*****************";
    Escribir "Datos del Cliente:";
    Escribir "RUT: " + rut;
    Escribir "Nombres: " + nombres;
    Escribir "Apellidos: " + apellidos;
    Escribir "Teléfono: " + telefono;
    Escribir "AFP: " + afp;
    Si sistemaSalud = 1 Entonces
        Escribir "Sistema de Salud: Fonasa";
    Sino
        Escribir "Sistema de Salud: Isapre";
    FinSi
    Escribir "Dirección: " + direccion;
    Escribir "Comuna: " + comuna;
    Escribir "Edad: ";
	Escribir edad;
    
FinProceso
