import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../theme/app_style.dart';
import '../../theme/colors.dart';

class ActiveBannerCard extends StatelessWidget {
  const ActiveBannerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(width: 1.7, color: Pallete.green),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/banner/image 25banner.png",
                fit: BoxFit.cover, width: 200),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Pallete.inactiveButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'DETAILS',
                      style: AppStyle.header.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Pallete.greenButtonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'BID',
                      style: AppStyle.header.copyWith(
                        fontSize: 12,
                        color: Pallete.green,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _labelAndCounter(label: 'Followers', subtitle: '10.5k'),
              const SizedBox(width: 5),
              _labelAndCounter(label: "Offers", subtitle: "94"),
              const SizedBox(width: 5),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Pallete.inactiveBorderColor,
                      child: const Center(
                        child: Icon(
                          Icons.more_horiz,
                          size: 15,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Pallete.green,
                      child: Center(
                        child: Icon(
                          MdiIcons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Pallete.green,
                      child: Icon(
                        MdiIcons.star,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Column _labelAndCounter({required String label, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyle.fadeText.copyWith(fontSize: 10),
        ),
        Text(
          subtitle,
          style: AppStyle.buttonText.copyWith(fontSize: 10),
        ),
      ],
    );
  }
}
