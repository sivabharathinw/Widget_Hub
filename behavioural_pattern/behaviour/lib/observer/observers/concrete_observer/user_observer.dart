import '../observer.dart';
class UserObserver  implements  Observer{
  String name;
  UserObserver(this.name);
  @override
  void update(String data){
    print("$name got notification $data");
  }
}