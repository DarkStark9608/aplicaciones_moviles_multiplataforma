import "dart:io";
List datos=[];
int cont=0;
void main(){
print("Bienvenido a la agenda de personas");
print("Deseas realizar una operacion: \n 1) Registar una persona\n 2) Mostrar los contactos \n 3) Insertar una nueva persona \n 4) Modificar un registro \n 5) Eliminar un registro");
String varopcion=stdin.readLineSync();
switch (varopcion) {
case "1":
{
agendarPersona();
main();
}
break;
case "2":
{
mostrarAgenda();
main();
}
break;
case "3":
{
agendarPersona();
main();
}
break;
case "4":
{
modificarPersona();
main();
}
break;
case "5":
eliminarAgenda();
main();
break;
}
}



void agendarPersona(){
print("ingresa el nombre de la persona");
String varnombre=stdin.readLineSync();
print("ingresa el telefono de la persona");
String vartelefono=stdin.readLineSync();
int valtelefeno=int.parse(vartelefono);
print("ingresa el email de la persona");
String varemail=stdin.readLineSync();
cont=cont+1;
Map <String, dynamic> datos_persona={
"nombre":varnombre,
"telefono":valtelefeno,
"correo": varemail
};
datos.add(datos_persona);
}

void modificarPersona(){
mostrarAgenda();
print("Selecciona el nombre de la persona que deseas modificar");
String varmodificar=stdin.readLineSync();

for (int i=0; i<datos.length; i++){
    var datos_persona_modificada= new Map();
    datos_persona_modificada= datos[i];
  
  if (varmodificar== datos_persona_modificada["nombre"])
  {
    print("ingresa el nombre de la persona");
    String varnombre=stdin.readLineSync();
    print("ingresa el telefono de la persona");
    String vartelefono=stdin.readLineSync();
    int valtelefeno=int.parse(vartelefono);
    print("ingresa el email de la persona");
    String varemail=stdin.readLineSync();  
    datos_persona_modificada["nombre"]=varnombre;
    datos_persona_modificada["telefono"]=valtelefeno;
    datos_persona_modificada["correo"]=varemail;
    datos[i]=datos_persona_modificada;
    print(datos);
  }
}
}

void mostrarAgenda(){
print(datos);
}

void eliminarAgenda(){
mostrarAgenda();
print("Selecciona el nombre de la persona que deseas eliminar");
String vareliminar=stdin.readLineSync();

for (int i=0; i<datos.length; i++){
    var datos_persona_eliminada= new Map();
    datos_persona_eliminada= datos[i];
    if (vareliminar== datos_persona_eliminada["nombre"])
  {
   datos.removeAt(i);
   print(datos);
  }
  
}
}



