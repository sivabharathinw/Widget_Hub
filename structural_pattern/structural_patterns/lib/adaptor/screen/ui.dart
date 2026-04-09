import 'package:flutter/material.dart';
import '/adaptor/model/api_user.dart';
import '/adaptor/model/user.dart';
import '/adaptor/convertor/user_adaptor.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AdapterPage());
  }
}

class AdapterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ApiUser apiUser = ApiUser(name:"Siva",age: 22);

    User user = UserAdaptor.convert(apiUser);

    return Scaffold(
      appBar: AppBar(title: Text("Adapter Pattern")),
      body: Center(
        child: Text(
          "Name: ${user.name}\nAge: ${user.age}",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}