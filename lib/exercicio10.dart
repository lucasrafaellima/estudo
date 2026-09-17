Future<String> buscaUsuario() async {
  await Future.delayed(Duration(seconds: 5));
  return 'Carlos Armando';
}

Future<void> carregarPerfil() async {
  try {
    String usuario = await buscaUsuario();
    print('Sucesso: $usuario');
  } catch (erro) {
    print('Erro na chamada de perfil: $erro');
  }
}

void main() async {
  print('1. Solicitando dados...');

  String nome = await buscaUsuario();

  print('2. Dado recebido: $nome');

  carregarPerfil();


}