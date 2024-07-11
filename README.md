# Vec
[![Pub Version](https://img.shields.io/pub/v/vec.svg)](https://pub.dev/packages/vec)
[![Dart Package Docs](https://img.shields.io/badge/documentation-pub.dev-blue.svg)](https://pub.dev/documentation/vec/latest/)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://github.com/mcmah309/vec/actions/workflows/ci.yml/badge.svg)](https://github.com/mcmah309/vec/actions)

vec is a package that adds additional extension methods for `List` and adds a `Vec` type - a typedef of `List`. 
`Vec` is used to specifically denote a contiguous **growable** array.
Unlike `List` which is growable or non-growable, which may cause runtime exceptions. `Vec` being a typedef of 
`List` means it can be used completely interchangeably.
```dart
Vec<int> vec = [1, 2, 3, 4];
// easily translate back and forth
List<int> list = vec;
vec = list;
```
`Vec` is a nice compliment to [rust_core's](https://github.com/mcmah309/rust_core) `Arr` (array) type.

## Usage

```dart
import 'package:rust_core/rust_core.dart';
import 'package:vec/vec.dart';

void main() {
  Vec<int> vec = [1, 2, 3, 4];

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
```