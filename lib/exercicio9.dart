import 'dart:io';
class ContaBancaria {
  String titular;
  double _saldo;

  ContaBancaria(this.titular, double saldoInicial) : _saldo = saldoInicial;

  double get saldo => _saldo;

  set depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    } else {
      print('Erro: O valor do depósito deve ser maior que zero');
    }
  }

  bool sacar(double valor) {
    if (valor >= 0 && valor <= _saldo) {
      _saldo -= valor;
      return true;
    } else {
      print('Erro, saldo insuficiente!');
      return false;
    }
  }

  void main() {
    print('Informe o nome do titular: ');
    var nome = stdin.readLineSync();

  }

}