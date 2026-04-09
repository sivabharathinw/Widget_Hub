import 'payment_strategy.dart';
class  PaymentCard implements PaymentStrategy{

  void pay(int amount){
    print("paying $amount using card");
  }
  }
