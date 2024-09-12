import 'dart:io';

class Persona {
  String nombre;
  int edad;
//Constructor
  Persona(this.nombre, this.edad);

  //Mostramos datos
  void datos() {
    print("Nombre: $nombre");
    print('Edad: $edad años');
  }
}

void main() {
  print('ingresa nombre del paciente');
  String ingreso = stdin.readLineSync()!;
  print('ingresa edad del paciente');
  String? ingreso2 = stdin.readLineSync();
  int ingreso2pars = int.parse('$ingreso2');

//Creamos objeto de la persona
  Persona persona1 = Persona('$ingreso', ingreso2pars);

//Llamamos la funcion
  persona1.datos();
}
