import 'dart:io';

void main(){
  print('are you \n1-married\n2-single');
  int x = int.parse(stdin.readLineSync()!);
  switch(x){
    case 1:
      print('hom many your children?');
      int ch = int.parse(stdin.readLineSync()!);
      if (ch >= 0 && ch<=3){
        print('your salary is ${(ch*150)+1200}');
      }
      if (ch >= 4 && ch<=6){
        print('your salary is ${(ch*250)+1800}');
      }
      if (ch >= 7){
        print('your salary is ${(ch*300)+2000}');
      }
      break ;

    case 2:
      print('How many years of experience do you have?');
      int y = int.parse(stdin.readLineSync()!);
      if (y >= 0 && y<=5){
        print('your salary is ${(y*200)+1000}');
      }
      if (y >= 6 && y<=10){
        print('your salary is ${(y*400)+1500}');
      }
      if (y >= 11){
        print('your salary is ${(y*600)+2000}');
      }
      break;
  }
}