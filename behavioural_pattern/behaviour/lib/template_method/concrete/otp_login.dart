import '/template_method/template/login_template.dart';
class OtpLogin extends LoginTemplate{
  @override
  void authenticate() {
    print("authernticate using otp number");
  }
}