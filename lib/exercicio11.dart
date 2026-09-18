Stream<int> contar() async* {
  for (int i =0; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (int numero in contar()) {
    print('Numero recebido: $numero');
  }

  print('Contagem finalizada!');

}