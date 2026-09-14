int somar(int a, int b) {
  return a + b;
}

int somar2(int a, int b) => a + b;

void main() {
  int a = 5;
  int b = 10;

  print(somar(a, b));
  print(somar2(a, b));
}