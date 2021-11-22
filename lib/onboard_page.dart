import 'package:flutter/material.dart';
import 'package:nft_dashboard/dashboard/widgets/widgets.dart';
import 'package:nft_dashboard/main.dart';
import 'package:nft_dashboard/theme/colors.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logoText(),
            const SizedBox(height: 30),
            BorderedButton(
              bgColor: Pallete.sideIconColor,
              label: 'CONTINUE',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NavScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
