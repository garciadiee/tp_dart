import 'dart:io';

void main() {
  //Pedimos el numero
  print('Ingrese un numero');
  int numero = int.parse(stdin.readLineSync()!);

  //Variable para acumular la suma
  int suma = 0;

  //Bucle para que cuente desde el 1 hasta el numero que ingresamos
  for (int i = 1; i <= numero; i++) {
    suma += i; //Sumamos cada numero a la variable suma
  }
  //Mostramos resultado de suma
  print('La suma de los numeros del 1 a $numero es: $suma');
}
