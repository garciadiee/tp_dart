int factorial(int n) {
  if (n <= 1) {
    return 1; //base
  } else {
    return n * factorial(n - 1); //Llamada recursiva
  }
}

void main() {
  //Pruebas de la funcion factorial
  print('Factorial de 5: ${factorial(5)}');
  print('Factorial de 6: ${factorial(6)}');
}
