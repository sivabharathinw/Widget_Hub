class NotificationService{
  bool email;
  bool sms;
  bool firebasecloudmessage;
  NotificationService({required this.email,required this.sms, required this.firebasecloudmessage});
 void emailNoti(){
   print("notification from email");
}
void smsNoti(){
   print("notification from sms");
}
void firebasecloudmessageNoti(){
   print("notification from firebasecloudmessage");
}
}