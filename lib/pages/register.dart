import 'package:flutter/material.dart';
import 'package:pr2/pages/login.dart';
import 'package:pr2/shared/constants.dart';

import '../shared/constantcolors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: decorationtextfield.copyWith(
                        hintText: "Enter your username",
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: decorationtextfield.copyWith(
                        hintText: "Enter your Email",
                      )),
            
                     SizedBox(
                    height: 40,
                  ),
            
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: decorationtextfield.copyWith(
                        hintText: "Enter your Password",
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BTNgreen),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                
                  SizedBox(
                    height: 23,
                  ),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("do not have account?", style: TextStyle(fontSize: 18)),
                      TextButton(
                   onPressed: (){
                    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const Login()),
  );
                   },
                  
                   child: Text('Sign in', style: TextStyle(color: Colors.black,fontSize: 18)),)
                    ],
                  )
                
                
                
                
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
