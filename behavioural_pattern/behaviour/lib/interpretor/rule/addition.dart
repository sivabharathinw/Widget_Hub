import '../value/number.dart';
class Addition{
  Number a ;
  Number b;
  Addition(this.a,this.b);
  int getValue(){
    return a.getValue()+b.getValue();
  }
}


