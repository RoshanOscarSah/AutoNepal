import 'package:app/constant/color.dart';
import 'package:app/login.dart';
import 'package:app/myHomePage.dart';
import 'package:app/onBoarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const OnboardPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().one,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Center(
              child: Image.asset("assets/img/splash_logo.png"),
            ),
          ),
          Container(
            height: 70,
            width: 70,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset("assets/svg/auto_nepal_icon.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
