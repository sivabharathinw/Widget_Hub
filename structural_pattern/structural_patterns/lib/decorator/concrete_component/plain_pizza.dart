import "/decorator/component/pizza.dart";
class PlainPizza implements Pizza {
  String name = "Plain Pizza";
  int price = 100;
  @override
String getName() {
    return name;
  }
  int getPrice(){
    return price;
  }
}
