class AuthService{
  String userName;
  String password;
  AuthService(this.userName,this.password);
  void login(){
    print("login successfull your username is $userName and password is $password");
  }
  void logout(){
    print("successfully logged out");
  }
}