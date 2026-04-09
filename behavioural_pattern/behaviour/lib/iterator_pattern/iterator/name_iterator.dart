import 'package:behaviour/iterator_pattern/iterator/iterator.dart';
import '/iterator_pattern/collection/student_name.dart';
class NameIterator implements MyIterator<String> {
  final NameCollection collection;
  int index = -1;

  NameIterator(this.collection);

  @override
  bool moveNext() {
    if (index + 1 < collection.names.length) {
      index++;
      return true;
    }
    return false;
  }

  @override
  String get current {
    return collection.names[index];
  }
}