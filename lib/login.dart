import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'signup.dart';
import 'onBoarding.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().one,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => OnboardPage()),
                        // );
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          "SIGNUP",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontFamily: 'Impact',
                            fontSize: 24,
                            color: AppColor().two,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 120),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'Impact',
                          fontSize: 48,
                          color: AppColor().two,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: TextField(
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24, color: AppColor().two),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor().two),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor().two),
                      ),
                      iconColor: AppColor().two,
                      fillColor: AppColor().two,
                      hintText: "Phone or Email",
                      hintStyle:
                          TextStyle(color: AppColor().two.withOpacity(0.5)),
                      prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Container(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset("assets/svg/user.svg"))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: TextField(
                    textAlign: TextAlign.start,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: TextStyle(fontSize: 24, color: AppColor().two),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor().two),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor().two),
                      ),
                      iconColor: AppColor().two,
                      fillColor: AppColor().two,
                      hintText: "Password",
                      hintStyle:
                          TextStyle(color: AppColor().two.withOpacity(0.5)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset("assets/svg/key_two.svg")),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100),
                // Spacer(),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 300,
        color: AppColor().one,
        alignment: Alignment.center,
        child: InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => OnboardPage()),
              // );
              Navigator.of(context).push(_createRoute());
            },
            child: SvgPicture.asset("assets/svg/next_two.svg")),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SignupPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
