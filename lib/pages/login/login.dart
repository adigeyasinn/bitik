import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/pages/signup/sign_up.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogIn extends StatelessWidget {

String? _email,_password;

void _logInGoogle(BuildContext context) async {

    final _userModel=Provider.of<UserViewModel>(context,listen: false);
    UserModel? _user= await _userModel.signInGoogle();
    print('Oturum açan user id:'+ _user!.UserID.toString());
}
    
  void _login(BuildContext context) async {
      final _usermodel=Provider.of<UserViewModel>(context,listen: false);
      UserModel? _user= await _usermodel.signInEmailAndPassword(_email!, _password!);
      if(_user!=null){
        print('Oturum açan user id:'+_user.UserID.toString());
      }
    }
  @override
  Widget build(BuildContext context)  {
    

    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: getProportionateScreenHeight(800),
              padding: EdgeInsets.fromLTRB(20, 60.0, 20.0, 20.0),
              decoration: new BoxDecoration(
                color: Color(0xff1f1f39),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,

                children: [
                  Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xffffffff),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'E-mail Adresi',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff858597),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                          
                    ),
                    onSaved: (String? email){
                      _email=email;
                    },
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Şifre',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff858597),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                    ),
                    onSaved: (String? passwd){
                      _password=passwd;
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Şifremi Unuttum',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xffb8b8d2),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      onPressed: ()=>_login(context),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'Hesabınız yok mu ?',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Üye ol',
                                    style: TextStyle(
                                        color: Colors.blueAccent, fontSize: 15),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpPage()));
                                      })
                              ]),
                        ),
                      )),
                  SizedBox(height: 8.0),
                  Text(
                    'Veya giriş yapın',
                    style: TextStyle(color: Colors.white24, fontSize: 15),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook,
                                  color: Colors.blue,
                                  size: 30,
                                ))
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: ()=>_logInGoogle(context),
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 30,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  

  
}
