class Animal {
  void comer() => print('Comendo...');
}

class Cachorro extends Animal {
  @override
  void comer() {
    print('Cachorro comendo ração!');
  }
}

void main() {
  var meuCachorro = Cachorro();

  meuCachorro.comer();

}