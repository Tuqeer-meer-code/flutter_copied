import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:uscb/api/api.dart';
class RegisterDB{
  final String name;
  final String email;
  final String password;
  RegisterDB({
    @required this.name,
    @required this.email,
    @required this.password
});

Future<String>  register()async{
  try{
    final response  =await http.post(Uri.parse(Api.signup_API),body: {
      "name" : name,
      "email" : email,
      "password" : password
    });
    if(response.statusCode== 200){
      final result = jsonDecode(response.body);
      return result;
    }else{
      return "Error";
    }
  }catch(e){
    return "ERROR IN REGISTER FUNCTION ==> $e";;
  }
}

}