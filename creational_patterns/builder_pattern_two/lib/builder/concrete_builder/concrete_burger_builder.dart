import 'package:builder_pattern_two/products/burger.dart';
import 'package:builder_pattern_two/builder/abstract_builder/burger_builder.dart';

class ConcreteBurgerBuilder implements BurgerBuilder {
  final Burger _burger = Burger();

  @override
  void setBun(String bun) {
    _burger.bun = bun;
  }

  @override
  void setPatty(String patty) {
    _burger.patty = patty;
  }

  @override
  void setSauce(String sauce) {
    _burger.sauce = sauce;
  }

  @override
  Burger getBurger() {
    return _burger;
  }
}