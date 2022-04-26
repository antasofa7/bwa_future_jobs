import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';

class CategoryTile extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CategoryTile({Key? key, required this.name, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      margin: const EdgeInsets.only(top: 16, right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
      child: Align(
          child: Container(
              width: 150,
              height: 200,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(0, 0, 0, 0), Color(0xff0D1240)]),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  name,
                  style:
                      whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
              ))),
    );
  }
}
