import 'package:flutter/material.dart';
import 'package:nft_dashboard/theme/app_style.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
          side: const BorderSide(
            width: 1,
            color: Color(0x6069723D),
          ),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          label,
          style: AppStyle.header.copyWith(
            fontSize: 13,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
