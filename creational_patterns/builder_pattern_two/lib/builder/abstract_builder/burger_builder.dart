import 'package:builder_pattern_two/products/burger.dart';

abstract class BurgerBuilder {
  void setBun(String bun);
  void setPatty(String patty);
  void setSauce(String sauce);
  Burger getBurger();
}