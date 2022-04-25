import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_job/pages/onboarding.dart';
import 'package:future_job/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            'assets/logo.png',
            width: 59,
            height: 76,
          )),
          const SizedBox(height: 50),
          Text(
            'FutureJob'.toUpperCase(),
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 32,
            ),
          )
        ],
      ),
    );
  }
}
