import "/facade/services/api_service.dart";
import "/facade/services/auth_service.dart";
import "/facade/services/notification_service.dart";
class AppFacade {
  AuthService authService;
  ApiService apiService;
  NotificationService notificationService;
  AppFacade({required this.authService,required this.apiService,required this.notificationService});
  void login(){
    authService.login();
  }
  void logout(){
    authService.logout();
  }

  void getApiData(){
    apiService.getApiData();
  }
  void emailNoti(){
    notificationService.emailNoti();
  }
  void smsNoti(){
    notificationService.smsNoti();
  }
  void firebasecloudmessageNoti(){
    notificationService.firebasecloudmessageNoti();
  }

}


