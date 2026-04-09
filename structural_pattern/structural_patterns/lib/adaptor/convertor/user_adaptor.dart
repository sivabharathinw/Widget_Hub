
import '../model/api_user.dart';
import '../model/user.dart';
class UserAdaptor {
  static User convert(ApiUser apiuser){
    return User(
      name: apiuser.name,
      age: apiuser.age
    );
  }
}