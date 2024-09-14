import 'dart:io';

//Agenda
List<String> contactos = [];

class Contacto {
  //Propiedades
  String nombre;
  String numero;

  //Contructor
  Contacto(this.nombre, this.numero);

  @override
  String toString() {
    return 'Nombre: $nombre, Número: $numero';
  }
}

//Menu
void opciones() {
  print('CONTACTOS');
  print('1. Mis Contactos');
  print('2. Agregar');
  print('3. Eliminar');
  print('4. Salir');
}

//Funciones
void agregarContactos() {
  print('Ingrese nombre del contacto');
  String nombrE = stdin.readLineSync()!;

  print('Ingrese numero del contacto');
  String numerO = stdin.readLineSync()!;

  Contacto contacto = Contacto('$nombrE', numerO);
  contactos.add(contacto.toString());
}

void mostrarContactos() {
  if (contactos.isEmpty) {
    print('No hay contactos.');
  } else {
    print('CONTACTOS');
    print(contactos);
    for (int i = 0; i < contactos.length; i++) {
      print('${i + 1}. ${contactos[i]}');
    }
  }
}

void eliminarContacto() {
  if (contactos.isEmpty) {
    print('No hay contactos que eliminar');
    return;
  }
  mostrarContactos();
  print('Selecciona el numero de contacto que desea eliminar:');
  int indice = int.parse(stdin.readLineSync()!);

  if (indice > 0 && indice <= contactos.length) {
    print('Contacto eliminado: ${contactos[indice - 1]}');
    contactos.removeAt(indice - 1);
  } else {
    print('No existe el contacto');
  }
}

void main() {
  bool continuar = true;

//Mostramos el menu hasta que el usuario quiera salir
  while (continuar) {
    opciones();
    print('Selecciona una opcion:');
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        mostrarContactos();
        break;
      case 2:
        agregarContactos();
        break;
      case 3:
        eliminarContacto();
        break;
      case 4:
        continuar = false;
        print('Nos vemos...');
        break;
      default:
        print('Opcion invalida. Presta atencion');
    }
  }
}
