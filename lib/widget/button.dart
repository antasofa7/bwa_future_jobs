import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String title;
  final double width;
  final int backgroundColor;
  final int titleColor;
  final Future onPressed;
  const Button(
      {Key? key,
      required this.title,
      required this.width,
      required this.backgroundColor,
      required this.titleColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
          onPressed: () {
            onPressed;
          },
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: Color(backgroundColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: medium,
              color: Color(titleColor),
            ),
          )),
    );
  }
}
