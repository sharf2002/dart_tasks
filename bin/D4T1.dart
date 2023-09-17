import 'dart:io';

void main() {
  List<int> myList = [];
  String a = 'y';
  print('chose from options');
  do {
    print(
        " 1-add value \n 2-remove value \n 3-update value \n 4-show value \n 5-search value ");
    var x = int.parse(stdin.readLineSync()!);
    switch (x) {
      case 1:
        print('please enter the length of list');
        int length = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < length; i++) {
          print('enter item ${i + 1}');
          myList.add(int.parse(stdin.readLineSync()!));
        }
        print('your list become $myList');
        break;

      case 2:
        print('a)remove by value \nb)remove by index');
        String x = stdin.readLineSync()!;
        if (x == 'a') {
          print(' please enter the value');
          x = stdin.readLineSync()!;
          if (!myList.contains(x)) {
            print(' the value not found');
          } else {
            myList.remove(x);
            print('your list become $myList');
          }
        }
        if (x == 'b') {
          print('please enter the index');
          int x = int.parse(stdin.readLineSync()!);
          if (x > myList.length) {
            print('out of range');
          } else {
            myList.removeAt(x);
            print("your list become $myList");
          }
        }
        break;

      case 3:
        print('please enter old value');
        int x = int.parse(stdin.readLineSync()!);
        if (!myList.contains(x)) {
          print('not found!');
          print('your list is $myList');
        } else {
          print('please enter new value');
          int y = int.parse(stdin.readLineSync()!);
          myList[myList.indexOf(x)] = y;
          print('your list become $myList');
        }
        break;

      case 4:
        print('the value of the list');
        myList.forEach((element) {
          print(element);
        });
        break;

      case 5:
        print('a-found or not found \nb-get index');
        String s = stdin.readLineSync()!;
        if (s == 'a') {
          print('enter the number of searching');
          int x = int.parse(stdin.readLineSync()!);
          if (myList.contains(x)) {
            print('the element is found');
          } else {
            print('the element not found');
          }
        }
        if (s == 'b') {
          print('enter the number of searching');
          int x = int.parse(stdin.readLineSync()!);
          if (myList.contains(x)) {
            print('the index is ${myList.indexOf(x)}');
          } else {
            print('can not get index');
          }
        }
        break;
      default:
        print('try again');
    }
    print('main menu ? y / n');
    a = stdin.readLineSync()!;
  } while (a != 'n');
}
