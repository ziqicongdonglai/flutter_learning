// import 'person.dart';
// import 'my_data.dart';
//
// void main() {
//   Person p1 = Person('张三', 20);
//   p1.printInfo();
//
//   getName();
//   getAge();
//   getSex();
// }

import 'my_data.dart' show getAge;
import 'my_data.dart' hide getName;

void main() {
  getAge();
}