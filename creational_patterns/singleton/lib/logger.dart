class Example {

  Example._internal();

  static final Example _instance = Example._internal();

  factory Example() {
    return _instance;
  }
  void log(String message) {
    print(" $message");
  }
}