<<<<<<< HEAD
import 'package:bitik_mobile_app/pages/sign_in.dart';
=======
import 'package:bitik_mobile_app/pages/home_page.dart';
>>>>>>> d0dadd7973cb18ffbbc94521730c803a2bae01cc
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
=======

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
>>>>>>> d0dadd7973cb18ffbbc94521730c803a2bae01cc
    );
  }
  
}
