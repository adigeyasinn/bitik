import 'package:bitik_mobile_app/repositories/user_repository.dart';
import 'package:bitik_mobile_app/services/firebase_auth_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator= GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => UserRepository());

}