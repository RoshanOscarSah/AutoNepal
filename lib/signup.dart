import 'package:app/signupName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'onBoarding.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "SIGNUP",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'Impact',
                          fontSize: 48,
                          color: AppColor().one,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Tell us who you are",
                        textAlign: TextAlign.end,
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
                SafeArea(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(40),
                        height: 285,
                        width: 285,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor().one,
                          // boxShadow: [
                          //   BoxShadow(color: Colors.green, spreadRadius: 3),
                          // ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 30, right: 30, bottom: 50),
                          child: Column(
                            children: [
                              Text(
                                "CUSTOMER",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Impact',
                                  fontSize: 40,
                                  color: AppColor().two,
                                ),
                              ),
                              SizedBox(
                                height: 85,
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 30,
                                      width: 30,
                                      child: SvgPicture.asset(
                                          "assets/svg/user_solid.svg")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 160,
                                    child: Text(
                                      "I need repair & services",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Sofia_pro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: AppColor().two,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 40, right: 40, left: 0, bottom: 40),
                        height: 285,
                        width: 285,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor().one.withOpacity(0.70),
                          // boxShadow: [
                          //   BoxShadow(color: Colors.green, spreadRadius: 3),
                          // ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 30, right: 30, bottom: 50),
                          child: Column(
                            children: [
                              Text(
                                "SERVICE",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Impact',
                                  fontSize: 40,
                                  color: AppColor().two,
                                ),
                              ),
                              SizedBox(
                                height: 85,
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 30,
                                      width: 40,
                                      child: SvgPicture.asset(
                                          "assets/svg/services_solid.svg")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 160,
                                    child: Text(
                                      "I do repair & towing",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Sofia_pro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: AppColor().two,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 40, right: 40, left: 0, bottom: 40),
                        height: 285,
                        width: 285,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor().one.withOpacity(0.70),
                          // boxShadow: [
                          //   BoxShadow(color: Colors.green, spreadRadius: 3),
                          // ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 30, right: 30, bottom: 50),
                          child: Column(
                            children: [
                              Text(
                                "SUPPLIER",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Impact',
                                  fontSize: 40,
                                  color: AppColor().two,
                                ),
                              ),
                              SizedBox(
                                height: 85,
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 30,
                                      width: 30,
                                      child: SvgPicture.asset(
                                          "assets/svg/suppliers_solid.svg")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 160,
                                    child: Text(
                                      "I sell spare parts & accessories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Sofia_pro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: AppColor().two,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 250,
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
        const SignupNamePage(),
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
