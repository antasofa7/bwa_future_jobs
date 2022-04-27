import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';

class JobTile extends StatelessWidget {
  final String imageUrl;
  final String jobTitle;
  final String companyName;

  const JobTile(
      {Key? key,
      required this.imageUrl,
      required this.jobTitle,
      required this.companyName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            height: 45,
          ),
          const SizedBox(width: 27),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(jobTitle,
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium)),
                Text(companyName, style: greyTextStyle),
                const SizedBox(
                  height: 18,
                ),
                const Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
