import "dart:io";
void main (){
print("Bienvenido a la de edad de perros");
print("Ingresa la edad de tu perro en años humano");
String varanos_humano=stdin.readLineSync();
double valanos_humano= double.parse(varanos_humano);
anosPerro(valanos_humano);
}
void anosPerro(valanos_humano){
double edad=valanos_humano*7;
 print("La edad de tu perro es: $edad años perro");
}