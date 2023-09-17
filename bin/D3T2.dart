import 'dart:io';

void main(){
  String again ='n';
  do {
    print('what is the operation do you want to do? \n'
        '1-factorial \n2-summation \n3-power');
    int x = int.parse(stdin.readLineSync()!);
    switch (x) {
      case 1:
        print('please enter integer number');
        int num = int.parse(stdin.readLineSync()!);
        for (int i = (num - 1); i > 0; i--) {
          num *= i;
        }
        print('factorial of your number is $num');
        break ;

      case 2:
        print('please enter integer number');
        int num = int.parse(stdin.readLineSync()!);
        for (int i =(num -1); i > 0; i--){
          num += i ;
        }
        print('summation of your number is $num');
        break ;

      case 3:
        int result = 1;
        print('please enter integer number');
        int num1 =int.parse(stdin.readLineSync()!);
        print('please enter the power');
        int num2 =int.parse(stdin.readLineSync()!);
        for (int i = num2 ; i >0; i-- ){
          result *= num1 ;
        }
        print('power of your number is $result');

    }
    print('back to operations ? y/n');
    again = stdin.readLineSync()!;
  }
  while(again == 'y');
}