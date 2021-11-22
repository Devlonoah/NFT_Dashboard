import 'package:flutter/material.dart';
import '../../theme/app_style.dart';
import '../../theme/colors.dart';

Widget logoText() {
  return Center(
    child: RichText(
      text: TextSpan(
        text: 'EZ',
        style: AppStyle.logoTextStyle
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: 'NFT',
            style: AppStyle.logoTextStyle
                .copyWith(color: Pallete.green, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
