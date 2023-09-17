import 'dart:io';

void main() {
  String again ='n';
  do {
    print('chose from options :');
    print('1-sum \n2-sub \n3-div \n4-mul');
    int x = int.parse(stdin.readLineSync()!);
    switch(x){
      case 1:
        print('enter the first number');
        int num1 = int.parse(stdin.readLineSync()!);
        print('enter the second number');
        int num2 = int.parse(stdin.readLineSync()!);
        print('the result :  ${sum(num1, num2)}');
        break;
      case 2:
        print('enter the first number');
        int num1 = int.parse(stdin.readLineSync()!);
        print('enter the second number');
        int num2 = int.parse(stdin.readLineSync()!);
        print('the result :  ${sub(num1, num2)}');
        break;
      case 3:
        print('enter the numerator number');
        int num1 = int.parse(stdin.readLineSync()!);
        print('enter the denominator number');
        int num2 = int.parse(stdin.readLineSync()!);
        print('the result :  ${div(num1, num2)}');
        break;

      case 4:
        print('enter the first number');
        int num1 = int.parse(stdin.readLineSync()!);
        print('enter the second number');
        int num2 = int.parse(stdin.readLineSync()!);
        print('the result :  ${mul(num1, num2)}');
        break;
    }

    print('do you want to try again? y / n ');
    again = stdin.readLineSync()!;
  }

  while(again == 'y');
}
int sum(int x , int y){
  return (x+y) ;
}
int sub(int x , int y){
  return (x-y);
}
double div(int x, int y){
  return (x/y);
}
int mul(int x, int y){
  return (x*y);
}