import 'package:app/signupPhone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'accountCreated.dart';
import 'onBoarding.dart';

class SignupPanPage extends StatelessWidget {
  const SignupPanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().two,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context, true);
                        },
                        child: SvgPicture.asset("assets/svg/back_one.svg"),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Impact',
                          fontSize: 48,
                          color: AppColor().one,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "PAN/ VAT for \n authentication",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Sofia_pro',
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                          color: AppColor().one,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: TextField(
                    textAlign: TextAlign.start,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: TextStyle(fontSize: 24, color: AppColor().one),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor().one),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor().one),
                      ),
                      iconColor: AppColor().one,
                      fillColor: AppColor().one,
                      hintText: "Upload",
                      hintStyle:
                          TextStyle(color: AppColor().one.withOpacity(0.5)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                            height: 20,
                            width: 20,
                            child:
                                SvgPicture.asset("assets/svg/upload_one.svg")),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 285,
                      width: 195,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor().one,
                        // boxShadow: [
                        //   BoxShadow(color: Colors.green, spreadRadius: 3),
                        // ],
                      ),
                      child: Text(
                        "PREVIEW",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor().two,
                          fontFamily: "Impact",
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 230,
        color: AppColor().two,
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
            child: SvgPicture.asset("assets/svg/next.svg")),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const AccountCreatedPage(),
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
