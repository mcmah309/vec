# Vec
[![Pub Version](https://img.shields.io/pub/v/vec.svg)](https://pub.dev/packages/vec)
[![Dart Package Docs](https://img.shields.io/badge/documentation-pub.dev-blue.svg)](https://pub.dev/documentation/vec/latest/)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://github.com/mcmah309/vec/actions/workflows/ci.yml/badge.svg)](https://github.com/mcmah309/vec/actions)

A zero cost extension type of `List`, representing a contiguous **growable** array. Unlike `List` which is growable or non-growable,
which may cause runtime exceptions. `Vec` adds new useful methods to the regular `List` type.
It is built on [rust_core](https://github.com/mcmah309/rust_core) and is a nice compliment to its `Arr` (array) type.

## Usage

```dart
import 'package:vec/vec.dart';

void main() {
  Vec<int> vec = Vec(); // or e.g. Vec([1, 2, 3, 4])
  List<int> list = vec.list; // easily translate back and forth
  Vec<int> vec = Vec(list);

  vec.push(5);

  vec.insert(2, 99);

  int removed = vec.remove(1);

  vec.resize(10, 0);

  RIterator<T> iterator = vec.extractIf((element) => element % 2 == 0);

  Vec<T> spliced = vec.splice(start, end, replaceWith);

  Slice<T> slice = vec.asSlice();
}
```