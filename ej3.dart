import 'dart:io';

void main() {
  //Pedimos el numero
  print('Ingrese un numero entero y te digo si es par o impar:');
  int numero = int.parse(stdin.readLineSync()!);
  //Determinamos la condicion
  if (numero % 2 != 0) {
    print('$numero es impar');
  } else {
    print('$numero es par');
  }
}
