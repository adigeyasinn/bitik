import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase{
  Future<UserModel?> createUser(String firstName,String lastName,String email,String password);
  Future<UserModel?> signInFacebook();
  Future<UserModel?> signInGoogle();
  Future<bool> signOut(); 
  Future<UserModel?> signInEmailAndPassword(String email,String password);
}