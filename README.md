# Vec

A Dart implementation of Rust's `Vec` type, a contiguous **growable** array. Unlike `List` which is growable or non-growable.
`Vec` is built on [rust_core](https://github.com/mcmah309/rust_core) and is a nice compliment to its `Arr` (array) type.

## Usage

```dart
import 'package:vec/vec.dart';

void main() {
  Vec<int> vec = Vec(); // or e.g. Vec([1, 2, 3, 4])

  vec.push(5);

  vec.insert(2, 99);

  int removed = vec.remove(1);

  vec.resize(10, 0);

  vec.forEach((element) {
    print(element);
  });

  // Use custom iterator to extract elements based on a condition
  var iterator = vec.extractIf((element) => element % 2 == 0);
  iterator.forEach((element) {
    print('Extracted: $element');
  });

  Vec<T> spliced = vec.splice(start, end, replaceWith);

  Slice<T> slice = vec.asSlice();
}
```