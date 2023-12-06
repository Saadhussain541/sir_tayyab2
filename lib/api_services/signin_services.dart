import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserCredentials{

 static Future userRegister({String? userName, String? userPassword})async{
  var headers = {
   'Content-Type': 'application/x-www-form-urlencoded',
   'Cookie': 'PHPSESSID=c5a1e7ee3d828478865bdb52613df536'
  };
  var request = http.Request('POST', Uri.parse('https://patcrm.codetech.pk/pat-crm/yoc/user.php'));
  request.bodyFields = {
   'action': 'add-new-user',
   'username_val': '$userName',
   'display_name_val': 'mobile user 3',
   'email_val': 'testing@yahoo.com',
   'password_val': '$userPassword',
   'userrole_val': '2',
   'phone_val': '0334748887888',
   'qualification_val': 'BSSE',
   'experience_val': '10+ years',
   'street_val': 'xyz street',
   'login_source': 'yemenaid'
  };
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
   var res = await response.stream.bytesToString();
   return res;
  }
  else {
   debugPrint(response.reasonPhrase);
   return null;
  }
 }

 static Future userLogin({String? userName, String? userPassword})async{
  var headers = {
   'Content-Type': 'application/x-www-form-urlencoded',
   'Cookie': 'PHPSESSID=c5a1e7ee3d828478865bdb52613df536'
  };
  var request = http.Request('POST', Uri.parse('https://patcrm.codetech.pk/pat-crm/yoc/auth.php'));
  request.bodyFields = {
   'action': 'Login',
   'username_val': '$userName',
   'password_val': '$userPassword',
   'login_source': 'yemenaid'
  };
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
   var res = await response.stream.bytesToString();
   return res;
  }
  else {
   debugPrint(response.reasonPhrase);
   return null;
  }
 }

}