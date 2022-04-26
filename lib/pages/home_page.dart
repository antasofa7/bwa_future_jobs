import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widget/category_tile.dart';

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
                        imageUrl: 'assets/card_category.png'),
                    CategoryTile(
                        name: 'Mobile Developer',
                        imageUrl: 'assets/category_2.png'),
                    CategoryTile(
                        name: 'Mobile Developer',
                        imageUrl: 'assets/card_category.png'),
                  ],
                ),
              )
            ],
          ));
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [header(), hotCategories()],
        ),
      )),
    );
  }
}
