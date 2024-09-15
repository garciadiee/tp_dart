int? busquedaBinaria(List<int> lista, int valor, int inicio, int fin) {
  if (inicio > fin) {
    return null; //No se encuentra el valor
  }

  int medio = (inicio + fin) ~/ 2;

  if (lista[medio] == valor) {
    return medio; // Valor encontrado
  } else if (lista[medio] > valor) {
    return busquedaBinaria(
        lista, valor, inicio, medio - 1); //Busca en mitad izquierda
  }
}

void main() {
  //Lista ordenada
  List<int> lista = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];

  //Busqueda binaria
  int valorBuscado = 7;
  int? resultado = busquedaBinaria(lista, valorBuscado, 0, lista.length - 1);

  if (resultado != null) {
    print('Valor $valorBuscado encontrado en el indice: $resultado');
  } else {
    print('Valor $valorBuscado no encontrado');
  }
}
