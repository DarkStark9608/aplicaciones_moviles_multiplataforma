import "dart:io";

void main(){
print("Bienvenido al almacen de sensores");
final objSensor = new Sensores();
}
class Sensores{
List datos=[];
Sensores(){
print("Ingresa el numero de sensores que deseas registrar");
String val_registro=stdin.readLineSync();
int valor_registro= int.parse(val_registro);
List datos=[];
for (int i= 0; i<valor_registro; i++){
agregrarRegistros();
}
mostarRegistros();
}
void agregrarRegistros(){
print("Ingresa el ID del sensor");
String id_sensor= stdin.readLineSync();
print("Ingresa el valor del sensor");
String valor_sensor= stdin.readLineSync();
double val_sensor =double.parse(valor_sensor);
print("Ingresa la fecha de ingreso");
String fecha= stdin.readLineSync();
Map <String, dynamic> datos_sensor={
"ID_sensor":id_sensor,
"Valor": val_sensor,
"Fecha": fecha
};
this.datos.add(datos_sensor);
}

void mostarRegistros(){
for (var dato in this.datos){
print("$dato");
}
}
}