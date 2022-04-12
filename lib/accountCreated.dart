import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'signup.dart';
import 'onBoarding.dart';

class AccountCreatedPage extends StatelessWidget {
  const AccountCreatedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().one,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: Center(
              child: SvgPicture.asset("assets/svg/account_created.svg"),
            ),
          ),
          Container(
            width: 180,
            child: Text(
              "ACCOUNT \n CREATED",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColor().two, fontFamily: "Impact", fontSize: 48),
            ),
          )
        ],
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
