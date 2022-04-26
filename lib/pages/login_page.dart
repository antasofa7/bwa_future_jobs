import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:future_job/pages/register_page.dart';
import 'package:future_job/theme.dart';

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

    Widget loginButton() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 40),
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
            },
            style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
            child: Text(
              'Sign In',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
              ),
            )),
      );
    }

    Widget signupButton() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
            },
            child: Text(
              'Create New Account',
              style: greyTextStyle.copyWith(fontWeight: light),
            )),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: ListView(children: [
                  header(),
                  illustration(),
                  inputEmail(),
                  inputPassword(),
                  loginButton(),
                  signupButton(),
                ]))));
  }
}
