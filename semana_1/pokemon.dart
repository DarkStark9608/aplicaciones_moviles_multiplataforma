import "dart:io";
void main (){
print("Bienvenido a la calculadora de pokemon");
print("Ingresa la medida del largo del rectangulo");
String largo=stdin.readLineSync();
double vallargo=double.parse(largo);
print("Ingresa la medida del ancho del rectangulo");
String ancho=stdin.readLineSync();
double valancho=double.parse(ancho);
pokemonCalculo(vallargo, valancho);
}
void pokemonCalculo(largo, ancho){
double area=largo*ancho;
double cantidad=area/30;
 print("Caben: $cantidad pokemon en el rectangulo");
}