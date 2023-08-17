import 'package:flash_chat/components/rounded_button.dart';

import 'package:flutter/material.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      upperBound: 100,
      duration: Duration(seconds: 1),
    );
    controller?.forward();
    controller?.addListener(() {
      setState(() {});
    });
    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });  for loop the animation
  }

  @override
  // void dispose() {
  //   super.dispose();
  //   controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: controller?.value,
                    child: Image.asset('lib/images/logo.png'),
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  child: TextLiquidFill(
                    text: 'Messenger',
                    waveColor: Colors.teal,
                    waveDuration: Duration(seconds: 1),
                    boxBackgroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      // backgroundColor: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    boxHeight: 300.0,
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            // SizedBox(
            //   height: 48.0,
            // ),
            roundButton(
              color: Colors.blueAccent,
              heading: 'LogIn',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            roundButton(
              color: Colors.lightBlueAccent,
              heading: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
