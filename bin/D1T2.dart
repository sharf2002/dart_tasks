import 'dart:io';

void main() {
  String name = 'a' ;
  int code = 0;
  double degreeSum = 0;
  String again = 'n';
  do {
    print('chose the subject');
    print('1-subject 1 \n2-subject 2 \n3-subject 3 \n4-subject 4 \n5-subject 5');
    int x =int.parse(stdin.readLineSync()!);


      print('enter your name ');
      String n = stdin.readLineSync()!;
      print('enter your code');
      int c = int.parse(stdin.readLineSync()!);
      print('enter your degree');
      double degree = double.parse(stdin.readLineSync()!);
      degreeSum += degree;
      name =n ;
      code = c ;

      print('main menu y/n');
      again = stdin.readLineSync()!;

  }
    while (again != 'n');
    double degreePercent = (degreeSum / 250) * 100;
    print('your name is $name');
   print('your code is $code');
  print('your total degree in all subjects is $degreeSum');

    print('the percent is $degreePercent');
    if (degreePercent >= 50 && degreePercent <= 65) {
      print('you got a pass grade');
    }
    else if (degreePercent >= 66 && degreePercent <= 75) {
      print('you got a good grade');
    }
    else if (degreePercent >= 76 && degreePercent <= 85) {
      print('you got a very good grade');
    }
    else if (degreePercent >= 86 && degreePercent <= 100) {
      print('you got a excellent  grade');
    }
  }
