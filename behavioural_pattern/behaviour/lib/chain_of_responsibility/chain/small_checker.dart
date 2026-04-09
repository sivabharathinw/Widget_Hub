import '/chain_of_responsibility/chain/big_checker.dart';

class SmallChecker {
 late  BigChecker next;

  String  check(int number) {
    if (number < 10) {
      return "SmallChecker: number is small";
    } else {
      return next.check(number);
    }
  }
}