void main() {
  int x = 2;
  int y = 3;
  int z = 5;

  int n1 = (fact(x) * power(x, y)) + sum(z);
  int n2 = power(z, y) * fact(y);
  print('re1 ${n1 / n2}');

  int n3 = power(x, y) * power(x, z);
  int n4 = ((sum(x) * sum(y)) + (fact(z) * fact(y)));

  print('re2 ${n3 / n4}');
}

int fact(int x) {
  int result = 1;
  for (int i = 1; i <= x; i++) {
    result *= i;
  }
  return result;
}

int sum(int x) {
  int sum = 0;
  while (x > 0) {
    sum += x;
    x--;
  }
  return sum;
}

int power(int x, int y) {
  if (y == 0) return 1;
  if (x == 0) return 0;
  return x * power(x, y - 1);
}
