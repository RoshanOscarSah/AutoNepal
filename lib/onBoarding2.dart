import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'onBoarding.dart';
import 'onBoarding3.dart';

class OnboardPage2 extends StatelessWidget {
  const OnboardPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().one,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: Center(
              child: SvgPicture.asset("assets/svg/onboarding2.svg"),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Services available anytime anywhere",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Sofia_pro',
                        fontSize: 29,
                        color: AppColor().two,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => OnboardPage3()),
                        // );
                        Navigator.of(context).push(_createRoute());
                      },
                      child: SvgPicture.asset("assets/svg/next_two.svg")),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const OnboardPage3(),
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
