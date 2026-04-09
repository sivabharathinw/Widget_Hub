import "package:behaviour/mediator_pattern/screens/login_screen.dart";
import "package:behaviour/template_method/concrete/email_login.dart";
import "package:behaviour/template_method/concrete/otp_login.dart";
import "package:behaviour/template_method/template/login_template.dart";
import "package:flutter/material.dart";
import "/chain_of_responsibility/screen/ui.dart";
import "/observer/subject/object.dart";
import "/observer/observers/concrete_observer/user_observer.dart";
import "/strategy_pattern/context/payment_context.dart";
import "strategy_pattern/strategy/cash.dart";
import "strategy_pattern/strategy/card.dart";
import "strategy_pattern/strategy/upi.dart";
import "state_pattern/context/atm_machine.dart";
import "/command/screens/ui.dart";
import "/iterator_pattern/collection/student_name.dart";
import "/iterator_pattern/iterator/name_iterator.dart";
import '/memonto_pattern/caretaker/history.dart';
import '/memonto_pattern/originator/text_editor.dart';
import '/template_method/template/login_template.dart';
void main(){
  // runApp(HomePage());
  // runApp(MyApp());
  runApp(LoginScreen());
  Subject obj=Subject();
  //list of observers who are listening to the object
  UserObserver user1=UserObserver("siva");
  UserObserver user2=UserObserver("bharu");
  UserObserver user3=UserObserver("ram");
  //adding observers to the object
  obj.addObserver(user1);
  obj.addObserver(user2);
  obj.addObserver(user3);
  obj.notifiObservers("hello  this is notification");
  //strategy pattern
PaymentContext context=PaymentContext();
context.setStrategy(Cash());
context.payNow(200);
context.payNow(500);
//after we can easily switch  to another strategy easily
context.setStrategy(PaymentCard());
context.payNow(200);
context.setStrategy(Upi());
context.payNow(200);
//state_patetrn
AtmMachine atm=AtmMachine();
atm.insertCard();
atm.insertCard();//gives already inserted bcz the state is already inserted
atm.removeCard();
atm.removeCard();//gives no card to remove bcz the state is already removed

  //iterator
  NameCollection collection=NameCollection();
  collection.addName("siva");
  collection.addName("bharu");
  collection.addName("ram");
  var iterator = collection.createIterator();

  while (iterator.moveNext()) {
    print(iterator.current);
  }

  //memonta

  var editor=TextEditor();
  editor.type("helloo");
  var history=History();
history.add(editor.save());
editor.restore(history.getLast());

//template method
LoginTemplate email=EmailLogin();
email.login();
  
LoginTemplate otp=OtpLogin();
otp.login();


}


