import "/decorator/component/pizza.dart";
abstract class PizzaDecorator implements Pizza {
  final Pizza pizza;

  PizzaDecorator(this.pizza);

  @override
  String getName() => pizza.getName();

  @override
  int getPrice() => pizza.getPrice();
}