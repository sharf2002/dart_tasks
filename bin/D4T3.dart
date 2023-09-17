import 'dart:io';

int sum = 0;
int x =0;
void main(){
  Map <String,int> m ={};
  print('how many values want to add map');
  x = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < x ; i++){
    print('enter key for element ${i+1}');
    String key = stdin.readLineSync()!;
    print('enter value for element ${i+1}');
    int value = int.parse(stdin.readLineSync()!);
    m[key] = value;
  }
  print ('the map become $m');
  m.forEach((key, value) {
    sum += value;
  });

  print('the summation of values : $sum');
  print('the average of values : ${sum/x}');


  int max = m.values.first;
  int min = m.values.first;
  m.forEach((key, value) {

    if (value >= max){
      max = value;
    }
    if (min >= value){
      min = value ;
    }

  });
  print('the max : $max');
  print("the min : $min");
}