import 'payment_strategy.dart';
class Upi implements PaymentStrategy{
  void pay(int amount){
    print("paying $amount using UPI");
  }
}