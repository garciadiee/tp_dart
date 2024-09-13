import 'dart:io';

class Cuenta {
//Definimos propiedades
  String titular;
  double saldo;

//Constructor
  Cuenta(this.titular, this.saldo);

//Para depositar
  void depositar() {
    print('Cuanto va a depositar?');
    String? monto = stdin.readLineSync()!;
    int montoParse = int.parse('$monto');
    saldo += montoParse;
    print('\$$monto depositado con exito. Su saldo actual es de \$$saldo');
  }

//Para retirar
  void retirar() {
    print('Cuanto va a retirar?');
    String? retiro = stdin.readLineSync()!;
    int retiroParse = int.parse('$retiro');
    if (retiroParse > saldo) {
      print('Fondos insuficientes. Tu saldo es de \$$saldo');
    } else {
      saldo -= retiroParse;
      print('\$$retiro retirados con exito. Su saldo actual es de \$$saldo');
    }
  }

//Mostramos datos
  void mostrar() {
    print('Titular: $titular');
    print('Saldo: \$$saldo');
  }

}

void main() {
  bool continuar = true;

   //Cuenta bancaria
  Cuenta cuenta1 = Cuenta('Diego', 100000.50);
//Mostramos el menu hasta que el usuario quiera salir
  while (continuar) {
    menu();
    print('Selecciona una opcion:');
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        cuenta1.mostrar();
        break;
      case 2:
        cuenta1.depositar();
        break;
      case 3:
        cuenta1.retirar();
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
    void menu() {
    print('\nMI CUENTA');
    print('1. Consultar saldo');
    print('2. Depositar');
    print('3. Retirar');
    print('4. Salir');
  }




// /*
// void main() {
//   //Cuenta bancaria
//   Cuenta cuenta1 = Cuenta('Diego', 100000.50);

//   //Mostramos
//   cuenta1.mostrar();

//   //Retirar mas del saldo
//   cuenta1.retirar(205420.66);

//   //Retirar un monto acorde al saldo
//   cuenta1.retirar(50000.50);

//   //Resumen
//   cuenta1.mostrar();
// }
