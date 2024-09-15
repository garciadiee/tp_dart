class Estudiante {
  String nombre;
  int edad;
  List<int> notas;

  Estudiante(this.nombre, this.edad, this.notas);

  //Promedios
  double promedio() {
    if (notas.isEmpty) {
      return 0.0;
    }
    int suma = notas.reduce((a, b) => a + b);
    return suma / notas.length;
  }
}

//Filtrar estudiantes promedio mayor a 6
List<String> promediosMayorA6(List<Estudiante> estudiantes) {
  return estudiantes
      .where((estudiante) => estudiante.promedio() > 6)
      .map((estudiante) => estudiante.nombre)
      .toList();
}

void main() {
  List<Estudiante> estudiantes = [
    Estudiante('Diego', 29, [8, 5, 10]),
    Estudiante('Ornella', 28, [7, 8, 9]),
    Estudiante('Juan', 25, [6, 5, 4]),
    Estudiante('Micaela', 22, [1, 2, 10]),
    Estudiante('Clara', 24, [5, 9, 9]),
  ];
  //Estudiantes con promedios mayot a 6
  List<String> aprobados = promediosMayorA6(estudiantes);
  print('Estudiantes aprobados:');
  aprobados.forEach(print);
}
