import 'dart:io';

String again = 'n';
void main() {
  double sugar = 22.25;
  double rice = 30.50;
  double tea = 59.75;
  double sugarPrice = 0;
  double ricePrice = 0;
  double teaPrice = 0;
  int ns = 0;
  int nr = 0;
  int nt = 0;

  do {
    print('please chose the product');
    print(' 1-sugar $sugar \n 2-rice $rice \n 3-tea $tea');
    int x = int.parse(stdin.readLineSync()!);

    switch (x) {
      case 1:
        print('enter the number of peaces');
        ns = int.parse(stdin.readLineSync()!);
        sugarPrice = ns * sugar;

        break;

      case 2:
        print('enter the number of peaces');
        nr = int.parse(stdin.readLineSync()!);
        ricePrice = nr * rice;

        break;

      case 3:
        print('enter the number of peaces');
        nt = int.parse(stdin.readLineSync()!);
        teaPrice = nt * tea;

        break;
    }
    print('main menu y/n');
    again = stdin.readLineSync()!;
  } while (again == 'y');
  if (sugarPrice != 0) {
    print('sugar $ns  $sugarPrice');
  }
  if (ricePrice != 0) {
    print('rice $nr  $ricePrice');
  }
  if (teaPrice != 0) {
    print('tea $nt $teaPrice');
  }

  print('total price = ${(sugarPrice + ricePrice + teaPrice)}');
}
