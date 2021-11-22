import 'package:flutter/material.dart';
import 'two_colored_header_text.dart';
import '../../theme/colors.dart';

class TopHeaderAndControl extends StatelessWidget {
  const TopHeaderAndControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TwoColoredHeaderText(firstLabel: "Top", secondLabel: "Listings"),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Material(
                color: Colors.grey[900],
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Material(
                color: Colors.grey[900],
                child: InkWell(
                  onTap: () {},
                  child: Flexible(
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
