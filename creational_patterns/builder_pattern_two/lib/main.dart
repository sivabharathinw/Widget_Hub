import 'package:builder_pattern_two/director/burger_director.dart';
import 'package:builder_pattern_two/builder/concrete_builder/concrete_burger_builder.dart';

void main() {
  ConcreteBurgerBuilder builder = ConcreteBurgerBuilder();
  BurgerDirector director = BurgerDirector(builder);

  // Build veggie burger
  director.buildVeggieBurger();
  var veggieBurger = builder.getBurger();
  print(veggieBurger.describe());

  // Build chicken burger
  director.buildChickenBurger();
  var chickenBurger = builder.getBurger();
  print(chickenBurger.describe());
}