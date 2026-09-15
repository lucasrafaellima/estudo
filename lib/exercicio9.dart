import 'dart:io';
class ContaBancaria {
  String? titular;
  double _saldo;

  ContaBancaria(String titular, double saldoInicial)
      : titular = titular,
        _saldo = saldoInicial;

  double get saldo => _saldo;

  set depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('O novo valor é $_saldo');
    } else {
      print('Erro: O valor do depósito deve ser maior que zero');
    }
  }

  bool sacar(double valor) {
    if (valor >= 0 && valor <= _saldo) {
      _saldo -= valor;
      print('O novo valor é: $_saldo');
      return true;
    } else {
      print('Erro, saldo insuficiente!');
      return false;
    }
  }
}

void main() {

    stdout.write('Informe o nome do titular: ');
    String nome = stdin.readLineSync() ?? '';

    stdout.write('Informe o saldo do titular: ');
    double saldo = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

    var conta = ContaBancaria(nome, saldo);

    print('O nome do titular é: $nome');
    print('O saldo é: ${conta.saldo}');

    stdout.write('Deseja sacar algum valor[S/N]?');
    String resp = stdin.readLineSync() ?? '';

    bool resp2;

    if (resp == 'S') {
      resp2 = true;
      stdout.write('Digite o valor que deseja sacar: ');
      double valor = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      conta.sacar(valor);
    }

}
