//login follows the same structure every time the user enter credentials  ,authenticate and go to home page
abstract class LoginTemplate {
  void login(){
    getUserInput();
    authenticate();
    navigation();
  }

void getUserInput() {
  print ("gain the user input need to login");
}
//it is the custom step of the login process

void navigation(){
  print("navigate to home screen");


}
void authenticate();
}
