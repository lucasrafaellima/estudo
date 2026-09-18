import 'exercicio11.dart';

void main() async {
  print('Iniciando a contagem...');

  contar().listen((numero) {
    print('Numero recebido: $numero');
  }, onDone: () {
    print('Stream finalizado!');
  });

  print('Esta linha roda imediatamente sem esperar a Stream!');

}