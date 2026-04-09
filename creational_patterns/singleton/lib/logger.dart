class Example {
//define the named private construtor
  Example._internal();
//static run only once after the class loads so it  only once create obj and store it in _inerenal
  //final just prptect after creating obje  from assign anotehr value
  static final Example _instance = Example._internal();
//factory constructor still there to controll teh access of aleardy cerated obj
  factory Example() {
    return _instance;
  }
  void log(String message) {
    print(" $message");
  }
}