import "dart:io";
List datos=[];
void main(){
print("Bienvenido a la agenda de personas");
agendarPersona();

print("Deseas realizar una operacion: \n 1) Mostrar los contactos \n 2) Insertar una nueva persona \n 3) Modificar un registro \n 4) Eliminar un registro");
String varopcion=stdin.readLineSync();
switch (varopcion) {
case "1":
{
print(datos_persona);
}
break;
case "2":
{
agendarPersona();
}
break;
case "3":
{
print("Selecciona la opcion que deseas modificar: \n 1) Nombre \n 2) Telefono \n 3) Email");
String varmodificar=stdin.readLineSync();
switch(varmodificar){
case "1":{
print("Ingresa el nuevo nombre");
String varnombre_nuevo=stdin.readLineSync();

}break;
case "2":{
print("Ingresa el nuevo telefono");
String vartelefono_nuevo=stdin.readLineSync();
int numero_nuevo=int.parse(vartelefono_nuevo);

}break;
case "3":{
print("Ingresa el nuevo email");
String nuevo_email=stdin.readLineSync();

}break;
}

break;
case "4":
{
print(datos_persona);
}
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
list=[varnombre,vartelefono,varemail];
Map <String, dynamic> datos_persona={
"nombre":varnombre,
"telefono":valtelefeno,
"correo": varemail
};
datos.add(datos_persona);
}
