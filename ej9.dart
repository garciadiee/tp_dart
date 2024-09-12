import 'dart:io';

//Lista
List<String> tareas = [];

//Menu
void menu() {
  print('\nMENU DE TAREAS');
  print('1. Agregar tarea');
  print('2. Marcar tarea completada');
  print('3. Mostrar pendientes');
  print('4. Salir');
}

//Funciones
void agregarTarea() {
  print('Escribe la nueva tarea:');
  String tarea = stdin.readLineSync()!;
  tareas.add(tarea);
}

void mostrarTareas() {
  if (tareas.isEmpty) {
    print('No hay tareas pendientes.');
  } else {
    print('TAREAS PENDIENTES');
    print(tareas);
    for (int i = 0; i < tareas.length; i++) {
      print('${i + 1}. ${tareas[i]}');
    }
  }
}

void marcarTarea() {
  if (tareas.isEmpty) {
    print('No hay tareas que marcar');
    return;
  }

//Mostramos
  mostrarTareas();
  print('Selecciona el numero de la tarea completada:');
  int indice = int.parse(stdin.readLineSync()!);

  if (indice > 0 && indice <= tareas.length) {
    print('Tarea completada: ${tareas[indice - 1]}');
    tareas.removeAt(indice - 1);
  } else {
    print('Numero de tarea inexistente');
  }
}

void main() {
  bool continuar = true;

//Mostramos el menu hasta que el usuario quiera salir
  while (continuar) {
    menu();
    print('Selecciona una opcion:');
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        agregarTarea();
        break;
      case 2:
        marcarTarea();
        break;
      case 3:
        mostrarTareas();
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
