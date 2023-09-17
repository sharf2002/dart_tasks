import 'dart:io';

void main() {
  Map m = {};
  String? searchKey(String v) {
    String? k;
    m.forEach(
      (key, value) {
        if (v == value) {
          k = key;
        }
        ;
      },
    );
    return k;
  }

  String a = 'y';
  do {
    print('chose from options');
    print('1-add value \n2-remove value \n3-update value \n4-show value \n5-search value ');
    int x = int.parse(stdin.readLineSync()!);
    switch (x) {
      case 1:
        print('how many values want to add');
        int v = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < v; i++) {
          print('enter map key for element ${i + 1}');
          String k = stdin.readLineSync()!;
          print('enter map value for element ${i + 1}');
          String v = stdin.readLineSync()!;
          m[k] = v;
        }
        print('the map become $m');
        break;

      case 2:
        print('a-remove by value \n b-remove by key');
        String x = stdin.readLineSync()!;
        if (x == 'a') {
          print('enter value');
          String v = stdin.readLineSync()!;
          String? k = searchKey(v);
          if (m.containsKey(k)) {
            m.remove(k);
            print('the map become $m');
          } else {
            print('the key not found');
          }
        }
        if (x == 'b') {
          print('enter key');
          String k = stdin.readLineSync()!;
          if (m.containsKey(k)) {
            m.remove(k);
            print('the map become $m');
          } else {
            print('key not found');
          }
        }
        break;

      case 3:
        print('enter old value');
        String oldValue = stdin.readLineSync()!;
        String? k = searchKey(oldValue);
        if (m.containsKey(k)) {
          print('enter new value');
          String newValue = stdin.readLineSync()!;
          m[k] = newValue;
          print('the map become $m');
        } else {
          print(' value not found');
        }
        break;

      case 4:
        print('the map contain :');
        m.forEach((key, value) {
          print('$key:$value');
        });
        break;

      case 5:
        print('a-found or not found \n b-get key');
        String x = stdin.readLineSync()!;
        if (x == 'a') {
          print(' enter the value');
          String v = stdin.readLineSync()!;
          String? k = searchKey(v);
          if (m.containsKey(k)) {
            print(' found');
          } else {
            print('not found');
          }
        }
        if (x == 'b') {
          print('enter value');
          String v = stdin.readLineSync()!;
          String? k = searchKey(v);
          print(k);
        }
        break;
      default:
        print('try again');
    }
    print('do you want to try again? y / n ');
    a = stdin.readLineSync()!;
  } while (a != 'n');
}
