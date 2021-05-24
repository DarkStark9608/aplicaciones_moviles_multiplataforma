import "dart:io";
void main (){
print("Bienvenido a la calculadora de promedio de la materia de aplicaciones moviles multiplataforma");
print("Ingresa el nombre del alumno");
String varnombre=stdin.readLineSync();
print("Ingresa la calificacion del primer parcial");
String varcal1=stdin.readLineSync();
print("Ingresa la calificacion del segundo parcial");
String varcal2=stdin.readLineSync();
print("Ingresa la calificacion del tercer parcial");
String varcal3=stdin.readLineSync();

double valcal1=double.parse(varcal1);
double valcal2=double.parse(varcal2);
double valcal3=double.parse(varcal3);

promedioAlumno(varnombre, valcal1, valcal2, valcal3);
}
void promedioAlumno(nombre, cal1, cal2, cal3){
double promedio=((cal1*.20)+(cal2*.30)+(cal3*.50));
 print("La calificacion de: $nombre es $promedio");
}