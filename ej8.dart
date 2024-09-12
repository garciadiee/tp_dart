class Cuenta {
//Definimos propiedades
  String titular;
  double saldo;

//Constructor
  Cuenta(this.titular, this.saldo);

//Para depositar
  void depositar(double monto) {
    saldo += monto;
    print('\$$monto depositado con exito. Su saldo actual es de \$$saldo');
  }

//Para retirar
  void retirar(double retiro) {
    if (retiro > saldo) {
      print('Fondos insuficientes. Tu saldo es de \$$saldo');
    } else {
      saldo -= retiro;
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
  //Cuenta bancaria
  Cuenta cuenta1 = Cuenta('Diego', 100000.50);

  //Mostramos
  cuenta1.mostrar();

  //Retirar mas del saldo
  cuenta1.retirar(205420.66);

  //Retirar un monto acorde al saldo
  cuenta1.retirar(50000.50);

  //Resumen
  cuenta1.mostrar();
}
