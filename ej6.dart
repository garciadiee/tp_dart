import 'dart:io';

//Funcion para verificar si es palindromo
bool palindromo(String palabra) {
  //Pasamos la palabra a minuscula en caso de y la invertimos
  String todoMinuscula = palabra.toLowerCase();
  String palabraInvertida = todoMinuscula.split('').reversed.join('');
  //Comparamos la palabra
  return todoMinuscula == palabraInvertida;
}

void main() {
  //Solicitamos una palabra
  print('Ingresa una palabra y te digo si es un palindromo');
  String ingreso = stdin.readLineSync()!;

  //Verificamos
  if (palindromo(ingreso)) {
    print('Es un palindromo');
  } else {
    print('No es un palindromo');
  }
}
