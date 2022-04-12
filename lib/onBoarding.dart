import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'onBoarding2.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().two,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: Center(
              child: SvgPicture.asset("assets/svg/onboarding1.svg"),
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
                      "Maintainance and repair simplified",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Sofia_pro',
                        fontSize: 29,
                        color: AppColor().one,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => OnboardPage2()),
                        // );
                        Navigator.of(context).push(_createRoute());
                      },
                      child: SvgPicture.asset("assets/svg/next.svg")),
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
        const OnboardPage2(),
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
