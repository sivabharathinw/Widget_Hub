import 'payment_strategy.dart';
class Cash  implements PaymentStrategy{
  void pay(int amount){
    print("paying $amount using cash");
  }
  }
