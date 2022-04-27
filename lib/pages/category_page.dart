import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widget/job_tile.dart';

class CategoryPage extends StatelessWidget {
  final String categoryTitle;
  final String imageUrl;
  const CategoryPage(
      {Key? key, required this.categoryTitle, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(16)),
                child: Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageUrl), fit: BoxFit.cover)),
                  child: Container(
                    height: 270,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 23.0, bottom: 30.0),
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(16)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(0, 0, 0, 0),
                              Color(0xff0D1240)
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(categoryTitle,
                            style: whiteTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold)),
                        const SizedBox(
                          height: 2,
                        ),
                        Text('12,309 available',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 30, left: defaultMargin, right: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Big Companies',
                      style: blackTextStyle.copyWith(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 25 - 16,
                    ),
                    Column(
                      children: const [
                        JobTile(
                            imageUrl: 'assets/google.png',
                            jobTitle: 'Front-End Developer',
                            companyName: 'Google'),
                        JobTile(
                            imageUrl: 'assets/instagram.png',
                            jobTitle: 'UI Designer',
                            companyName: 'Instagram'),
                        JobTile(
                            imageUrl: 'assets/facebook.png',
                            jobTitle: 'Data Scientist',
                            companyName: 'Facebook')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 30, left: defaultMargin, right: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Startups',
                      style: blackTextStyle.copyWith(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 25 - 16,
                    ),
                    Column(
                      children: const [
                        JobTile(
                            imageUrl: 'assets/google.png',
                            jobTitle: 'Front-End Developer',
                            companyName: 'Google'),
                        JobTile(
                            imageUrl: 'assets/instagram.png',
                            jobTitle: 'UI Designer',
                            companyName: 'Instagram'),
                        JobTile(
                            imageUrl: 'assets/facebook.png',
                            jobTitle: 'Data Scientist',
                            companyName: 'Facebook')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
