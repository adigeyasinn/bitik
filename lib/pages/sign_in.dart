import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body:Container(

        padding: EdgeInsets.fromLTRB(20, 60.0,0.0,0.0),
        width: 450,
        height: 850,
        decoration: new BoxDecoration(
            color: Color(0xff1f1f39), 
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
            
              children: [
                Text('Giriş Yap',style: TextStyle(
              fontFamily:'Poppins',
              color: Color(0xffffffff),
              fontSize: 32,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal ,),
              
              ),
              SizedBox(height: 32.0,),
              Text('E-mail Adresi',style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff858597),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  
    
    )),
              TextFormField(

              ),
              SizedBox(height: 16.0,),
              Text('Şifre',style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff858597),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  
    
    )),
    SizedBox(height: 16.0,),

              TextFormField(

              )      
              ],
            )
              
      ),

    );
  }
}
