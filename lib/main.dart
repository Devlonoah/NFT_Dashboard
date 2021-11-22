import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nft_dashboard/dashboard/dashboard.dart';
import 'package:nft_dashboard/dashboard/widgets/right_side.dart';
import 'package:nft_dashboard/dashboard/widgets/widgets.dart';
import 'package:nft_dashboard/theme/app_style.dart';
import 'package:nft_dashboard/theme/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ).copyWith(primaryColor: Colors.black),
      home: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: const [
          Expanded(child: LeftSide()),
          Expanded(
            flex: 4,
            child: DashBoard(),
          ),
          RightSide(),
        ],
      ),
    );
  }
}

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 19),
        _logoText(),
        const SizedBox(height: 10),
        GridView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.3,
          ),
          children: [
            _sideMenuButon(
              label: 'Home',
              icon: MdiIcons.home,
              onTap: () {},
            ),
            _sideMenuButon(
                label: 'Community', icon: MdiIcons.group, onTap: () {}),
            _sideMenuButon(
                label: 'Wallet', icon: MdiIcons.wallet, onTap: () {}),
            _sideMenuButon(label: 'Market', icon: Icons.shop_2, onTap: () {}),
            _sideMenuButon(
                label: 'Partner', icon: Icons.business, onTap: () {}),
            _sideMenuButon(
                label: 'Support',
                icon: MdiIcons.phoneCancelOutline,
                onTap: () {}),
          ],
        ),
        const SizedBox(height: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.0),
          child: BorderedButton(label: 'PROFILE'),
        ),
        const SizedBox(height: 13.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Text(
            'Following',
            style: AppStyle.header.copyWith(
                fontSize: 13,
                color: Pallete.dullGrey,
                fontWeight: FontWeight.w900),
          ),
        ),
        const SizedBox(height: 16.0),
        Expanded(
          child: RawScrollbar(
            thumbColor: Pallete.green,
            isAlwaysShown: true,
            radius: const Radius.circular(10),
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 15.0);
                },
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Ocxcu_Rusp',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: AppStyle.header.copyWith(
                              color: Pallete.stainedWhite2,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '93 min',
                          style: AppStyle.boldHeader.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF76818B)),
                        ),
                      )
                    ],
                  );
                }),
          ),
        ),
      ],
    );
  }

  Widget _sideMenuButon({
    required IconData? icon,
    required String label,
    required void Function()? onTap,
  }) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Pallete.fadeGrey, borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
            color: Pallete.sideIconColor,
          ),
          const SizedBox(height: 5.0),
          Text(label,
              style: AppStyle.header.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Pallete.stainedWhite2))
        ],
      ),
    );
  }

  Widget _logoText() {
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
}
