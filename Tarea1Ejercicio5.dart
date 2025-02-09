class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositar(double cantidad) {
    saldo += cantidad;
    print('Sea depositado ${cantidad}\ Lps. \nSaldo actual: ${saldo}\ Lps');
  }

  void retirar(double cantidad) {
    if (cantidad <= saldo) {
      saldo -= cantidad;
      print('Se a retirado: ${cantidad}\ Lps. \nSaldo actual: ${saldo}\ Lps');
    } else {
      print('Fondos insuficientes.');
    }
  }

  void consultarSaldo() {
    print(' Titular: ${titular}');
    print('Saldo actual: ${saldo}\ Lps');
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria('Pedro Escobar', 5000);

  cuenta.consultarSaldo();

  cuenta.depositar(500);
  cuenta.retirar(300);
}
