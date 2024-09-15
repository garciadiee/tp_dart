
void main() {
  List<int> numeros = [3, 6, 9, 12, 15];

//Recorremos la lista
  print('Lista:');
  for (int numero in numeros) {
    print(numero);
  }

  //Suma
  int suma = numeros.reduce((a, b) => a + b);
  print('La suma de los numeros es: $suma');

  //Numero mayor y menor
  int mayor = numeros.reduce((a, b) => a > b ? a : b);
  int menor = numeros.reduce((a, b) => a < b ? a : b);
  print('Numero mayor: $mayor');
  print('Numero menor: $menor');

  //Filtrar y transformar

  //Lista de numeros pares
  List<int> pares = numeros.where((numero) => numero % 2 == 0).toList();
  print('Numeros pares: $pares');

  //Lista con doble de cada numero
  List<int> dobles = numeros.map((numero) => numero * 2).toList();
  print('Numeros dobles: $dobles');
}
