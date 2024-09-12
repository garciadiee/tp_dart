import 'dart:io';

void main() {
  //Solicitar ingreso de valores
  print('Ingrese dos numeros enteros:');
  int primerNumero = int.parse(stdin.readLineSync()!);
  int segundoNumero = int.parse(stdin.readLineSync()!);
  //Operaciones
  int sumar = primerNumero + segundoNumero;
  int restar = primerNumero - segundoNumero;
  int multiplicar = primerNumero * segundoNumero;
  double division = primerNumero / segundoNumero;
  //Mostrar resultados
  print('La suma de los numeros ingresados es: $sumar');
  print('La resta de los numeros ingresados es: $restar');
  print('La multiplicacion de los numeros ingresados es: $multiplicar');
  print('La division de los numeros ingresados es: $division');
}
