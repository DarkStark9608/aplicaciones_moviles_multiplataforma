import "dart:io";
void main (){
print("Bienvenido a la calculadora de area del triangulo");
print("Ingresa la altura");
String valaltura=stdin.readLineSync();
print("Ingresa la base");
String valbase=stdin.readLineSync();
double base=double.parse(valbase);
double altura=double.parse(valaltura);
areaTriangulo(base ,altura);
}
void areaTriangulo(base, altura){
double area=(base*altura)/2;
 print("El area del triangulo es: $area");
}