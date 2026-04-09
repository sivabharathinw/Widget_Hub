import '/decorator/decorator/pizza_decorator.dart';
import '/decorator/component/pizza.dart';
class Cheese extends PizzaDecorator {
  Cheese(super.pizza);
String name="cheese";
int price=200;
  @override
  String getName() => pizza.getName() + name;

  @override
  int getPrice() => pizza.getPrice() + price;
}