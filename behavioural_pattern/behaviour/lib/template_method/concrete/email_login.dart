import "/template_method/template/login_template.dart";
class EmailLogin extends LoginTemplate{
  @override
  void authenticate(){
    print("authenticated using email and password");
  }
}