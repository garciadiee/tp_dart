import 'dart:io';

const double pi = 3.14;

void main() {
  //ingresamos el radio
  print('Ingrese el radio de un circulo');
  int radio = int.parse(stdin.readLineSync()!);
  //formula de area
  double area = pi * radio * radio;

//Devolvemos el resultado
  print('Si el radio del circulo es $radio, su area es $area');
}
