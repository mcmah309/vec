// ignore_for_file: unused_local_variable

import 'package:rust_core/rust_core.dart';
import 'package:vec/vec.dart';

void main() {
  Vec<int> vec = [1, 2, 3, 4];

  // easily translate back and forth
  List<int> list = vec;
  vec = list;

  Vec<int> replaced = vec.splice(1, 3, [5, 6]);
  print(replaced); // [2, 3]
  print(vec); // [1, 5, 6, 4]

  vec.push(5);
  vec.insert(2, 99);

  int removed = vec.removeAt(1);
  print(removed); // 5
  print(vec); // [1, 99, 6, 4, 5]

  vec.resize(10, 0);
  print(vec); // [1, 99, 6, 4, 5, 0, 0, 0, 0, 0]

  RIterator<int> iterator = vec.extractIf((element) => element % 2 == 0);
  Vec<int> extracted = iterator.collectVec();
  print(extracted); // [6, 4, 0, 0, 0, 0, 0]
  print(vec); // [1, 99, 5]

  Slice<int> slice = vec.asSlice();
}