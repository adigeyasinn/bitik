import 'package:bitik_mobile_app/locator.dart';
import 'package:bitik_mobile_app/pages/login/login.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context)=>UserViewModel(),
      child: MaterialApp(
        home:LogIn() ,
      ),
    );
  }
}