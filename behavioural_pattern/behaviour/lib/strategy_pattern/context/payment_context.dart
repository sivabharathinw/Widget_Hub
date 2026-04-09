import '../strategy/payment_strategy.dart';
//context is the mian class uses the  selected strategy and call the stretegy method
class PaymentContext {
  PaymentStrategy? strategy;
  void setStrategy(PaymentStrategy strategy) {
    this.strategy = strategy;
  }
  void payNow(int amount){
    strategy?.pay(amount);
  }
}