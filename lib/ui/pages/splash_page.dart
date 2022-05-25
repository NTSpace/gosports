import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../shared/theme.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.scale,
        alignment: Alignment.bottomCenter,
        duration: const Duration(milliseconds: 1500),
        reverseDuration: const Duration(milliseconds: 4000),
        child: const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 190,
                  height: 220,
                  margin: const EdgeInsets.only(bottom: 10, top: 85),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/basket_logo.png'),
                    ),
                  ),
                ),
                Container(
                  width: 194,
                  height: 41,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/go_sports.png'),
                    ),
                  ),
                ),
              ],
            ),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
