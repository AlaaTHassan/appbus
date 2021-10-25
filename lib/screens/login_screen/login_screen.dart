import 'package:appbus/constants/mycolor.dart';
import 'package:appbus/customs/custom_text.dart';
import 'package:appbus/customs/custompotton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailc = TextEditingController();
  TextEditingController passc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,),
          CustomText(controller: emailc),
          SizedBox(height: 20,),

          CustomText(controller: passc),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Forget your password",style: style3,),
              SizedBox(width: 20,),

              Custompotton(name: "Login", onPressed: (){}, height: 40, width: 90),

            ],
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("don`t have an account?",style: style3,),

              Text("Signup",style: style1,),

            ],
          )


        ],
      ),
    );
  }
}
