import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;
  @override
  Widget build(BuildContext context) {
    Widget successAppliedMessage() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 30),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: const Color(0xffECEDF1),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          'You have applied this job and the recruiter will contact you',
          style: greyTextStyle,
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isApplied
                  ? successAppliedMessage()
                  : const SizedBox(
                      height: 50,
                    ),
              Image.asset(
                'assets/google.png',
                height: 60,
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Front-End Developer',
                  style: blackTextStyle.copyWith(
                      fontSize: 20.0, fontWeight: semiBold)),
              const SizedBox(
                height: 2,
              ),
              Text('Google, Inc - Jakarta', style: greyTextStyle),
            ],
          ),
        ),
      );
    }

    Widget detailItem(String text) {
      return Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0, right: 8.0),
              child: Image.asset(
                'assets/dot.png',
                width: 12,
                height: 12,
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: blackTextStyle.copyWith(fontWeight: light),
              ),
            )
          ],
        ),
      );
    }

    Widget about() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About the job',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            detailItem('Full-Time On Site.'),
            detailItem('Start at \$18,000 per month.'),
          ],
        ),
      );
    }

    Widget qualifications() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Qualifications',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            detailItem('Candidate must possess at least a Bachelor\'s Degree.'),
            detailItem(
                'Able to use Microsoft Office and Google based service.'),
            detailItem(
                'Have an excellent time management, good at organized and details.')
          ],
        ),
      );
    }

    Widget responsibilities() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Responsibilities',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            detailItem(
                'Initiate and promote any programs, events, training, or activities'),
            detailItem(
                'Assessing and anticipating needs and collaborate with Division.')
          ],
        ),
      );
    }

    Widget applyButton() {
      return Center(
        child: Container(
          width: 200.0,
          margin: const EdgeInsets.only(top: 50),
          child: TextButton(
            onPressed: () {
              setState(() {
                isApplied = !isApplied;
              });
            },
            style: TextButton.styleFrom(
                backgroundColor: !isApplied ? primaryColor : redColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
            child: Text(
              !isApplied ? 'Apply for Job' : 'Cancel Apply',
              style: whiteTextStyle.copyWith(fontWeight: medium),
            ),
          ),
        ),
      );
    }

    Widget messageButton() {
      return Center(
          child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 35),
              child: Text(
                'Message Recruiter',
                style: greyTextStyle.copyWith(fontWeight: light),
              )));
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                about(),
                qualifications(),
                responsibilities(),
                applyButton(),
                messageButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
