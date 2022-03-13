import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../confirmationScreen/confirmationPage.dart';
import 'RadioGroup.dart';
import 'RegisterationItem.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50),
                Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                defaultTextForm(
                    imagePath: 'asset/person icon.png', label: 'USERNAME'),
                SizedBox(height: 30),
                defaultTextForm(
                    imagePath: 'asset/id number icon.png', label: 'ID NUMBER'),
                SizedBox(height: 30),
                defaultTextForm(
                    imagePath: 'asset/lock icon.png', label: 'PASSWORD'),
                SizedBox(height: 30),
                defaultTextForm(
                    imagePath: 'asset/phone icon.png', label: 'PHONE NUMBER'),
                SizedBox(height: 30),
                RadioGroup(),
                SizedBox(height: 30),
                defaultButtton(
                  txt: 'CONFIRM NOW',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => confirmationPage()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
