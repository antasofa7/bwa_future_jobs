import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widget/button.dart';
import 'package:future_job/widget/inputField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Sign In',
            style: greyTextStyle.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            'Build Your Career',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
        ]),
      );
    }

    Widget illustration() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Center(
          child: Image.asset(
            'assets/work_illustration.png',
            height: 240,
          ),
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              onChanged: (value) {
                print(value);
                bool isValid = EmailValidator.validate(value);
                if (isValid) {
                  setState(() {
                    isEmailValid = true;
                  });
                } else {
                  setState(() {
                    isEmailValid = false;
                  });
                }
              },
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  fillColor: inputFieldColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: isEmailValid ? primaryColor : redColor,
                      ))),
              style: isEmailValid ? purpleTextStyle : redTextStyle,
            ),
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    fillColor: inputFieldColor,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: primaryColor,
                        ))),
                style: purpleTextStyle,
              ),
            ],
          ));
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(children: [
            header(),
            illustration(),
            inputEmail(),
            inputPassword(),
            const SizedBox(
              height: 40.0,
            ),
            const Button(
              title: 'Sign In',
              width: 312.0,
              backgroundColor: 0xff4141A4,
              titleColor: 0xffFFFFFF,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Create New Account',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )),
            )
          ]),
        ));
  }
}
