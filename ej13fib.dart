int fibonacci(int nu) {
  if (nu == 0) {
    return 0; // Base F(0)
  } else if (nu == 1) {
    return 1; //Base F(1)
  } else {
    return fibonacci(nu - 1) + fibonacci(nu - 2); //Recursiva
  }
}

void main() {
  print('Primeros 10 numeros;');
  for (int i = 0; i < 10; i++) {
    print(fibonacci(i));
  }
}
