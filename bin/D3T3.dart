import 'dart:io';

void main() {
  List<int> myList = [];
  int sum = 0;
  double avg = 0;
  int max = 0;
  int min = 0;

  print('enter the length of the list');
  int length = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < length; i++) {
    print('enter item ${i + 1}');
    int item = int.parse(stdin.readLineSync()!);
    myList.add(item);
  }
  min = myList[0];
  max = myList[0];
  for (int i = 0; i < myList.length; i++) {
    sum += myList[i];

    if (myList[i] >= max) {
      max = myList[i];
    }
    if (myList[i] <= min) {
      min = myList[i];
    }
  }

  avg = sum / length;
  print('the list is $myList');
  print('sum of items: $sum');
  print('avg of items: $avg');
  print('max of items: $max');
  print('min of items: $min');
}
