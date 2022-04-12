import 'package:app/signupEmail.dart';
import 'package:app/signupPan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

class SignupLiscencePage extends StatelessWidget {
  const SignupLiscencePage({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context, true);
                        },
                        child: SvgPicture.asset("assets/svg/back_two.svg"),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Driving Liscence for \n authentication",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Sofia_pro',
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                          color: AppColor().two,
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
                      hintText: "Upload",
                      hintStyle:
                          TextStyle(color: AppColor().two.withOpacity(0.5)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                            height: 20,
                            width: 20,
                            child:
                                SvgPicture.asset("assets/svg/upload_two.svg")),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 285,
                  width: 365,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor().two,
                    // boxShadow: [
                    //   BoxShadow(color: Colors.green, spreadRadius: 3),
                    // ],
                  ),
                  child: Text(
                    "PREVIEW",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor().one,
                      fontFamily: "Impact",
                      fontSize: 40,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 230,
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
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SignupPanPage(),
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
