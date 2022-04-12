import 'package:app/signupPhone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'onBoarding.dart';

class SignupEmailPage extends StatelessWidget {
  const SignupEmailPage({Key? key}) : super(key: key);

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
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "",
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
                        "Email for verification",
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
                      hintText: "Email Address",
                      hintStyle:
                          TextStyle(color: AppColor().one.withOpacity(0.5)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset("assets/svg/mail.svg")),
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset("assets/svg/send_one.svg"),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Enter received pin",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'Sofia_pro',
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                          color: AppColor().one.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        border: Border.all(
                          color: AppColor().one.withOpacity(0.7),
                          width: 5,
                        ),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 48, color: AppColor().one),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          fillColor: AppColor().one,
                          hintText: "",
                          hintStyle:
                              TextStyle(color: AppColor().one.withOpacity(0.5)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        border: Border.all(
                          color: AppColor().one.withOpacity(0.7),
                          width: 5,
                        ),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 48, color: AppColor().one),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          fillColor: AppColor().one,
                          hintText: "",
                          hintStyle:
                              TextStyle(color: AppColor().one.withOpacity(0.5)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        border: Border.all(
                          color: AppColor().one.withOpacity(0.7),
                          width: 5,
                        ),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 48, color: AppColor().one),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          fillColor: AppColor().one,
                          hintText: "",
                          hintStyle:
                              TextStyle(color: AppColor().one.withOpacity(0.5)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        border: Border.all(
                          color: AppColor().one.withOpacity(0.7),
                          width: 5,
                        ),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 48, color: AppColor().one),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor().two.withOpacity(0)),
                          ),
                          fillColor: AppColor().one,
                          hintText: "",
                          hintStyle:
                              TextStyle(color: AppColor().one.withOpacity(0.5)),
                        ),
                      ),
                    )
                  ],
                )
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
        const SignupPhonePage(),
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
