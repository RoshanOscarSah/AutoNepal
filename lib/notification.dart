import 'package:app/signupName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/constant/color.dart';

import 'onBoarding.dart';

class NotificationpPage extends StatelessWidget {
  const NotificationpPage({Key? key}) : super(key: key);

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
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "NOTIFICATION",
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
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "Audi - 5 bidder found",
                            style: TextStyle(
                                color: AppColor().one,
                                fontFamily: "Sofia_pro",
                                fontWeight: FontWeight.w200,
                                fontSize: 16),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          child: Text(
                            "2 hour ago",
                            style: TextStyle(
                                color: AppColor().one,
                                fontFamily: "Sofia_pro",
                                fontWeight: FontWeight.w100,
                                fontSize: 12),
                          ),
                          alignment: Alignment.bottomRight,
                        )
                      ],
                    ),
                  ],
                ),
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
