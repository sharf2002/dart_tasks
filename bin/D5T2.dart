import 'dart:io';

void getList(List <int> l){

  print('enter length of list');
  int length = int.parse(stdin.readLineSync()!);
  for (int i=0 ; i < length; i++ ) {
    print('add list items for element ${i+1}');
    int x = int.parse(stdin.readLineSync()!);
    l.add(x);
  }
}

void showList (List <int> l ){
    print ('the list $l ');
}

int sumList(List<int> l){
  int sum=0;
  l.forEach((element) {
    sum += element;
  });
  return sum ;
}

double avgList (List<int> l ){
  double Avg = 0;
  Avg = sumList(l)/l.length ;
  return Avg;
}

Map maxAndMinList (List <int> l){

  int maxValue = l[0];
  int minValue = l[0];
  for (int i in l){
    if (i > maxValue){
      maxValue = i ;
    }

    if (i < minValue){
      minValue = i ;
    }
  }

  return {'max': maxValue , 'min': minValue}  ;
}

void main(){
  List<int> n = [];
  getList(n);
  showList(n);
 print ( sumList(n));
 print(avgList(n));
 print(maxAndMinList(n));


}