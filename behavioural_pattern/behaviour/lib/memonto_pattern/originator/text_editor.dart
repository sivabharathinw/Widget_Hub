import 'package:behaviour/memonto_pattern/memonto/memonta.dart';

class TextEditor {
  String text="";
  void type(String newText){
    text=newText;
  }
  Memonta save(){
    return Memonta(text);
  }
  void restore(Memonta memonto){
    text=memonto.name;
  }
  }
