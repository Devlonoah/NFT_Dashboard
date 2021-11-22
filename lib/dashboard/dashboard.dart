import 'package:flutter/material.dart';
import 'package:nft_dashboard/dashboard/widgets/banner_section.dart';
import 'package:nft_dashboard/dashboard/widgets/widgets.dart';
import 'package:nft_dashboard/theme/app_style.dart';
import 'package:nft_dashboard/theme/colors.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DashBoardBody();
  }
}

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: RawScrollbar(
        thumbColor: Pallete.green,
        isAlwaysShown: true,
        radius: const Radius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 19),
              const TopHeaderAndControl(),
              const SizedBox(height: 10),
              const BannerSection(),
              const SizedBox(height: 20),
              const TwoColoredHeaderText(
                  firstLabel: 'Recent', secondLabel: 'Listings'),
              const SizedBox(height: 15),
              for (var i = 0; i <= 10; i++) const ListingCard()
            ],
          ),
        ),
      ),
    );
  }
}

class ListingCard extends StatelessWidget {
  const ListingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: const Color(0xFF171a1c).withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Row(
          children: [
            Row(
              children: [
                Text(
                  'JUST NOW',
                  style: AppStyle.fadeText.copyWith(
                      fontSize: 14,
                      letterSpacing: -0.4,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 17,
                      backgroundImage: AssetImage('assets/avatar/bancor.png'),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: Flexible(
                        child: Text('Bancor',
                            style: AppStyle.header.copyWith(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ],
                )
              ],
            ),
            Spacer(),
            Text('-->',
                style: AppStyle.fadeText.copyWith(
                    fontSize: 15,
                    letterSpacing: -0.4,
                    fontWeight: FontWeight.w700)),
            Spacer(),
            Row(
              children: [
                Text('ReSeller',
                    style: AppStyle.header.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                const SizedBox(width: 14),
                const CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.black,
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  '0.908ETH',
                  style: AppStyle.header.copyWith(
                      fontSize: 15,
                      color: Pallete.green,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '\$2.705',
                  style: AppStyle.header.copyWith(
                      fontSize: 15,
                      color: AppStyle.fadeText.color,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                  elevation: 4,
                  primary: Pallete.lightBlack,
                  shadowColor: Pallete.green.withOpacity(0.8),
                  textStyle: AppStyle.header.copyWith(
                      fontSize: 12,
                      color: const Color(0xFF0B0B0B),
                      fontWeight: FontWeight.bold),
                  backgroundColor: Pallete.green),
              onPressed: () {},
              child: Text(
                'Preview'.toUpperCase(),
                style: AppStyle.header.copyWith(
                    fontSize: 11,
                    color: const Color(0xFF0B0B0B),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
