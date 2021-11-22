import 'package:flutter/material.dart';
import '../../theme/app_style.dart';

import '../../theme/colors.dart';

class TwoColoredHeaderText extends StatelessWidget {
  const TwoColoredHeaderText({
    Key? key,
    required this.firstLabel,
    required this.secondLabel,
  }) : super(key: key);

  final String? firstLabel;
  final String? secondLabel;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: firstLabel,
          style: AppStyle.header.copyWith(
              color: Pallete.green, fontSize: 32, fontWeight: FontWeight.w700),
          children: [
            TextSpan(
              text: " $secondLabel",
              style: AppStyle.header.copyWith(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            )
          ]),
    );
  }
}
