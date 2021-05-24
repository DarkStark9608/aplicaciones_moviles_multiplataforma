import "dart:io";
void main (){
print("Bienvenido a la calculadora de perimetro");
print("Ingresa la medida de un lado del hexagono");
String vallado=stdin.readLineSync();
double lado=double.parse(vallado);
perimetroHexagono(lado);
}
void perimetroHexagono(lado){
double perimetro=lado*6;
 print("El perimetro es: $perimetro");
}