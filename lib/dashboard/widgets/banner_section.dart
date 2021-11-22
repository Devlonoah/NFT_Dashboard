import 'package:flutter/material.dart';
import 'package:nft_dashboard/dashboard/widgets/widgets.dart';
import 'package:nft_dashboard/theme/colors.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ActiveBannerCard(),
          for (var i = 0; i <= 5; i++)
            Container(
              width: 200,
              margin: const EdgeInsets.only(right: 25),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.5, color: Pallete.dullGrey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/banner/image 25banner.png",
                    fit: BoxFit.cover, width: 200),
              ),
            ),
          //2```````````````
        ],
      ),
    );
  }
}
