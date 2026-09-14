
void criarUsuario({required String nome, String? titulo}) {
  String saudacao = titulo != null ? '$titulo $nome' : nome;
  print('Usuário criado: $saudacao');
}

void main() {
  criarUsuario(nome: 'Ana', titulo: 'Dra');
  criarUsuario(nome: 'Alan');
}
