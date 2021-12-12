import 'package:bitik_mobile_app/locator.dart';
import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/services/auth_base.dart';
import 'package:bitik_mobile_app/services/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository implements AuthBase{
  final FirebaseAuthService _firebaseAuth= locator<FirebaseAuthService>();
  @override
  Future<UserModel> createUser(String firstName,String lastName,String email, String password) async {
    UserModel? _user=await _firebaseAuth.createUser(firstName,lastName,email, password);
    return _user!;
  }

  @override
  Future<UserModel> signInFacebook() async {
    UserModel? _user=await _firebaseAuth.signInFacebook();
    return _user;
  }

  @override
  Future<UserModel> signInGoogle() async {
    UserModel? _user=await _firebaseAuth.signInGoogle();
    return _user!;
  }

  @override
  Future<UserModel?> signInEmailAndPassword(String email, String password) async {
    UserModel? _user=await _firebaseAuth.signInEmailAndPassword(email, password);
    return _user;
  }

  @override
  Future<bool> signOut() async {
    return await _firebaseAuth.signOut();
  }

}