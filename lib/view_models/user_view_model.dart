import 'package:bitik_mobile_app/locator.dart';
import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/repositories/user_repository.dart';
import 'package:bitik_mobile_app/services/auth_base.dart';
import 'package:flutter/cupertino.dart';

class UserViewModel with ChangeNotifier implements AuthBase{
  UserRepository _userRepository= locator<UserRepository>();
  UserModel? _user;
  String? mesaj1;
  String? mesaj2;
  @override
  Future<UserModel?> createUser(String firstName,String lastName,String email, String password) async{
    
       _user=await _userRepository.createUser(firstName,lastName,email, password);
       return _user!;
     
  }

  @override
  Future<UserModel> signInFacebook() async {
    _user=await _userRepository.signInFacebook();
    return _user!;
  }

  @override
  Future<UserModel?> signInGoogle() async {
    try{
    _user= await _userRepository.signInGoogle();
    return _user!;
    }
    catch(e){
      debugPrint('ViewModeldeki SignInGoogle Hatası'+e.toString());
      return null;
    }
  }

  // bool _emailPasswordCheck(String email, String password) {
  //    var result=true;
  //    if(password.length<6){
  //     mesaj1="En az 6 karakter olmalı";
  //     result=false;
  //   }else{
  //     mesaj1=null;
  //   }
  //   if(!email.contains("@")){
  //     mesaj2="Geçersiz email adresi";
  //     result=false;
  //   }else{
  //     mesaj2=null;
  //   }
  //   return result;
  // }
  
  notifyListeners();
  

  @override
  Future<UserModel?> signInEmailAndPassword(String email, String password) async{
    _user= await _userRepository.signInEmailAndPassword(email, password);
    return _user;
  }

  @override
  Future<bool> signOut() async {
    return await _userRepository.signOut();
  }
}