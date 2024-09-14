import 'dart:io';

//Agenda
List<Contacto> contactos = [];

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
  print('2. Buscar Contactos');
  print('3. Agregar Contactos');
  print('4. Eliminar Contactos');
  print('5. Salir');
}

//Funciones
void mostrarContactos() {
  if (contactos.isEmpty) {
    print('No hay contactos.');
  } else {
    print('CONTACTOS');
    // Usar map para transformar la lista de contactos a una lista de cadenas formateadas
    contactos.asMap().forEach((index, contacto) {
      print('${index + 1}. ${contacto.toString()}');
    });
  }
}

void buscarContacto() {
  print('Ingrese nombre del contacto que desea buscar');
  String nombreBuscado = stdin.readLineSync()!;

  try {
    Contacto contactoEncontrado = contactos.firstWhere((contacto) =>
        contacto.nombre.toLowerCase() == nombreBuscado.toLowerCase());

    print('Contacto encontrado: ${contactoEncontrado.toString()}');
  } catch (e) {
    print('No se encontró ningún contacto con el nombre $nombreBuscado');
  }
}

void agregarContactos() {
  print('Ingrese nombre del contacto');
  String nombrE = stdin.readLineSync()!;

  print('Ingrese numero del contacto');
  String numerO = stdin.readLineSync()!;

  Contacto contacto = Contacto('$nombrE', numerO);
  contactos.add(contacto);
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
        buscarContacto();
        break;
      case 3:
        agregarContactos();
        break;
      case 4:
        eliminarContacto();
        break;
      case 5:
        continuar = false;
        print('Nos vemos...');
        break;
      default:
        print('Opcion invalida. Presta atencion');
    }
  }
}
