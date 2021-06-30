import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:uscb/api/api.dart';
class LoginDB{
  final String email;
  final String password;

  LoginDB({
     @required this.email,
     @required this.password});
Future<String>  login() async{
try{
  final response = await http.post(Uri.parse(Api.login_API),body: {
    "email": email,
    "password": password,
  });
  if(response.statusCode==200){
    final result =jsonDecode(response.body);
    return result;
  }else{
    return "Error";
  }

}catch(e){
  return "ERROR $e";
}
}
}