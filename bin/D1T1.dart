import 'dart:io';

String again = 'n';
void main() {
  double sugar = 22.25;
  double rice = 30.50;
  double tea = 59.75;

  do {
    print('please chose the product');
    print(' 1-sugar $sugar \n 2-rice $rice \n 3-tea $tea');
    int x = int.parse(stdin.readLineSync()!);

    switch (x) {
      case 1:
        print('enter the number of peaces');
        int n = int.parse(stdin.readLineSync()!);
        print('the price of the peace = $sugar \ntotal price = ${sugar * n} ');
        break;

      case 2:
        print('enter the number of peaces');
        int n = int.parse(stdin.readLineSync()!);
        print('the price of the peace = $rice \ntotal price = ${rice * n} ');
        break;

      case 3:
        print('enter the number of peaces');
        int n = int.parse(stdin.readLineSync()!);
        print('the price of the peace = $tea \ntotal price = ${tea * n} ');
        break;
    }
    print('main menu y/n');
    again = stdin.readLineSync()!;
  }
  while (again == 'y');
}
