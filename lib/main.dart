import 'dart:ui';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/SignupEmail.dart';
import 'package:app/notification.dart';
import 'package:app/signup.dart';
import 'package:app/myHomePage.dart';
import 'package:app/signupLiscence.dart';
import 'package:app/signupPassword.dart';
import 'package:app/splash.dart';
import 'package:flutter/material.dart';

import 'accountCreated.dart';
import 'signupName.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sofia_pro',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: AnimatedSplashScreen(
      //     splashIconSize: 350,
      //     splash: ('assets/img/splash_logo.png'),
      //     backgroundColor: Colors.black,
      //     duration: 30000,
      //     splashTransition: SplashTransition.slideTransition,
      //     nextScreen: MyHomePage(title: "This is Home page")),

      home: NotificationpPage(),
    );
  }
}
