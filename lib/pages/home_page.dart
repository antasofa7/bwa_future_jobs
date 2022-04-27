import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widget/category_tile.dart';
import 'package:future_job/widget/job_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              Text(
                'Jason Powell',
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/profile_register.png',
            width: 58,
            height: 58,
          )
        ]),
      );
    }

    Widget hotCategories() {
      return Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hot Categories',
                  style: blackTextStyle.copyWith(fontSize: 16)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CategoryTile(
                        name: 'Website Developer',
                        imageUrl: 'assets/category_1.png'),
                    CategoryTile(
                        name: 'Mobile Developer',
                        imageUrl: 'assets/category_2.png'),
                    CategoryTile(
                        name: 'App Designer',
                        imageUrl: 'assets/category_3.png'),
                  ],
                ),
              )
            ],
          ));
    }

    Widget justPosted() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Just Posted',
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            const JobTile(
                imageUrl: 'assets/google.png',
                jobTitle: 'Front-End Developer',
                companyName: 'Google'),
            const JobTile(
                imageUrl: 'assets/instagram.png',
                jobTitle: 'UI Designer',
                companyName: 'Instagram'),
            const JobTile(
                imageUrl: 'assets/facebook.png',
                jobTitle: 'Data Scientist',
                companyName: 'Facebook')
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            unselectedItemColor: greyColor,
            selectedItemColor: blackColor,
            currentIndex: 0,
            elevation: 0,
            iconSize: 24,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/Icon_apps_outline.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/Icon_notification_outline.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/Icon_love_outline.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/Icon_user_outline.png')),
                  label: ''),
            ]),
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [header(), hotCategories(), justPosted()],
        ),
      )),
    );
  }
}
