//this file store data and create iterator
import '/iterator_pattern/iterator/name_iterator.dart';

class NameCollection {
  List<String> names = [];

  void addName(String name) {
    print("name added");
    names.add(name);
  }

  NameIterator createIterator() {
    return NameIterator(this);
  }
}