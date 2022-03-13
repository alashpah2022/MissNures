import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Section/SectionScreen.dart';
import '../SignUpScreen/SignUpScreen.dart';
import 'component.dart';

class LoginScreen extends StatelessWidget {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff042246),
              Color(0xff041e3e),
              Color(0xff1a5aa0),
              Color(0xff01060c),
              Color(0xff01070e)
            ],
            stops: [0.0, 0.0, 0.01, 0.760, 9.80],
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Image.asset('asset/logo.png')),
                  ),
                  defaultTextForm(
                    imagePath: 'asset/person icon.png',
                    label: 'User Name',
                    controller: userNameController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  defaultTextForm(
                    imagePath: "asset/lock icon.png",
                    isPassword: true,
                    label: 'Password',
                    controller: passwordController,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  defaultButtton(
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SectionScreen(),
                          ));
                    },
                    txt: 'LOG IN',
                    backGround: Colors.blue,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ));
                    },
                    child: const Text(
                      'Sign Up?',
                      style: TextStyle(
                        inherit: true,
                        color: Colors.white,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
