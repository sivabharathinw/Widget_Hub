import '../observers/observer.dart';
class Subject{
  //subject have all observers who are listening to this object
  List<Observer> observers=[];
  void addObserver(Observer o){
    print("observer added");
    observers.add(o);
  }
  void notifiObservers(String data){
    for (Observer o in observers){
      o.update(data);
    }
  }

}