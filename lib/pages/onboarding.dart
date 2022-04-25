import 'package:flutter/material.dart';
import 'package:future_job/pages/login_page.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widget/button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      Text(
                        'Build Your Next Future Career Like a Master',
                        style: whiteTextStyle.copyWith(
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '18,000 jobs available',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: light),
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      const Center(
                          child: Button(
                        title: 'Get Started',
                        width: 200.0,
                        backgroundColor: 0xffFFFFFF,
                        titleColor: 0xff4141A4,
                      )),
                      const SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200.0,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                backgroundColor: transparentColor,
                                side: BorderSide(color: whiteColor),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(66),
                                ),
                              ),
                              child: Text(
                                'Sign In',
                                style:
                                    whiteTextStyle.copyWith(fontWeight: medium),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
