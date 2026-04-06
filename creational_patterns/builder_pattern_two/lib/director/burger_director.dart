import 'package:builder_pattern_two/builder/concrete_builder/concrete_burger_builder.dart';

class BurgerDirector {
  ConcreteBurgerBuilder builder;

  BurgerDirector(this.builder);

  void buildVeggieBurger() {
    builder.setBun('Whole Wheat');
    builder.setPatty('Veggie');
    builder.setSauce('Mayo');
  }

  void buildChickenBurger() {
    builder.setBun('White');
    builder.setPatty('Chicken');
    builder.setSauce('BBQ');
  }
}