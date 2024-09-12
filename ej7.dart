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
//Creamos objeto de la persona
  Persona persona1 = Persona('Diego', 29);

//Llamamos la funcion
  persona1.datos();
}
