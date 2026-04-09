import '/decorator/decorator/pizza_decorator.dart';
import '/decorator/component/pizza.dart';
class Mushroom extends PizzaDecorator {
  Mushroom(super.pizza);
String name="Mushroom";
int price=50;
  @override
  String getName() => pizza.getName() +name;

  @override
  int getPrice() => pizza.getPrice() + price;


}