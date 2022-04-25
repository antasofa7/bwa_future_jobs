import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';

class InputField extends StatelessWidget {
  final String label;
  const InputField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: greyTextStyle.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
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
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
