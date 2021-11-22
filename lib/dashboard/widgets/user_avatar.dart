import 'package:flutter/material.dart';
import 'package:nft_dashboard/theme/app_style.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);
  final String imageUrl;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900]?.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 9,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(width: 5),
            Expanded(
              flex: 3,
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: AppStyle.boldHeader
                    .copyWith(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '10 mins',
                textAlign: TextAlign.right,
                style: AppStyle.boldHeader.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF76818B)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
