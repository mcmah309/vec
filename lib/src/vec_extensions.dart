import 'vec.dart';

extension VecOnIterableExtension<T extends Object> on Iterable<T> {
  Vec<T> toVec() {
    return Vec(toList());
  }
}

extension VecOnIteratorExtension<T extends Object> on Iterator<T> {
  Vec<T> collectVec() {
    final list = <T>[];
    while (moveNext()) {
      list.add(current);
    }
    return Vec(list);
  }
}

extension VecOnListExtension<T extends Object> on List<T> {
  Vec<T> asVec() {
    return Vec(this);
  }
}

extension VecOnListListExtension<T extends Object> on List<List<T>> {
  Vec<T> toFlattenedVec() {
    return Vec(expand((element) => element).toList());
  }
}

extension VecOnListVecExtension<T extends Object> on List<Vec<T>> {
  Vec<T> toFlattenedVec() {
    return Vec(expand((element) => element).toList());
  }
}

extension VecOnVecVecExtension<T extends Object> on Vec<Vec<T>> {
  Vec<T> flatten() {
    return Vec(list.expand<T>((element) => element).toList());
  }
}

extension VecOnVecListExtension<T extends Object> on Vec<List<T>> {
  Vec<T> flatten() {
    return Vec(expand<T>((element) => element).toList());
  }
}

extension VecSetExtension<T extends Object> on Set<T> {
  Vec<T> toVec() {
    return Vec(toList());
  }
}
