import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'widgets.dart';
import '../../theme/app_style.dart';
import '../../theme/colors.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      constraints:
          const BoxConstraints(maxWidth: 250, maxHeight: double.infinity),
      padding: const EdgeInsets.only(
        right: 6,
        top: 0.0,
        left: 6,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 21),
          _header(),
          const SizedBox(height: 19),
          const _chatMessages(),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 1,
            childAspectRatio: 1.1,
            children: const [
              _ChartCard(
                label: 'Earnings',
                amount: 7.048,
                isDebit: false,
              ),
              _ChartCard(
                label: 'Spending',
                amount: 7048.0,
                isDebit: true,
              ),
            ],
          ),
          const SizedBox(height: 5),
          BorderedButton(
            label: 'SEE DETAILS',
          )
        ],
      ),
    );
  }
}

class _ChartCard extends StatelessWidget {
  final String label;
  final double amount;
  final bool isDebit;

  const _ChartCard({
    Key? key,
    required this.label,
    required this.amount,
    required this.isDebit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _chartTitleAndWalletAmouont(
            title: label, amount: amount, isDebit: isDebit),
        Flexible(
          child: LineChart(
            LineChartData(
              minY: 0,
              minX: 0,
              lineBarsData: [
                LineChartBarData(
                  barWidth: 3,
                  isStepLineChart: false,
                  spots: !isDebit
                      ? const [
                          FlSpot(0, 24),
                          FlSpot(1, 24),
                          FlSpot(2, 40),
                          FlSpot(3, 84),
                          FlSpot(4, 100),
                          FlSpot(5, 80),
                          FlSpot(6, 64),
                          FlSpot(7, 86),
                          FlSpot(8, 108),
                          FlSpot(9, 105),
                          FlSpot(10, 105),
                          FlSpot(11, 124),
                          FlSpot(13, 110),
                          FlSpot(15, 140),
                          FlSpot(18, 110),
                        ]
                      : const [
                          FlSpot(160, 0),
                          // FlSpot(140, 15),
                          // FlSpot(110, 13),
                          // FlSpot(124, 14),
                          // FlSpot(105, 10),
                          // FlSpot(105, 8),
                          // FlSpot(86, 7),
                          // FlSpot(
                          //   100,
                          //   4,
                          // ),
                          // FlSpot(84, 3),
                          // FlSpot(105, 9),
                          // FlSpot(80, 5),
                          // FlSpot(64, 6),
                          FlSpot(70, 10),
                          FlSpot(0, 24),
                        ].reversed.toList(),
                  dotData: FlDotData(show: true),
                  isCurved: true,
                  curveSmoothness: 0.6,
                  belowBarData: BarAreaData(
                    show: true,
                    gradientFrom: const Offset(0.5, 0.1),
                    gradientTo: const Offset(0.5, 1),
                    colors: isDebit
                        ? [
                            Pallete.lightreddish,
                            Colors.black,
                          ]
                        : [
                            Colors.green.shade900,
                            Colors.black38,
                          ],
                  ),
                  colors: [
                    isDebit ? Pallete.reddish : Pallete.green,
                  ],
                )
              ],
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
            ),
            swapAnimationDuration: const Duration(seconds: 1),
            swapAnimationCurve: Curves.easeInOut,
          ),
        ),
      ],
    );
  }
}

class _chatMessages extends StatelessWidget {
  const _chatMessages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: RawScrollbar(
        interactive: true,
        thumbColor: Pallete.green,
        radius: const Radius.circular(5),
        isAlwaysShown: true,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            final _message = chats[index];
            return UserAvatar(
                imageUrl: _message.avatarUrl, name: _message.title);
          },
          itemCount: chats.length,
        ),
      ),
    );
  }
}

Widget _header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Direct Messages',
        style: AppStyle.header.copyWith(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      Text(
        'NEW',
        style: AppStyle.header.copyWith(
            fontSize: 13, fontWeight: FontWeight.w700, color: Pallete.green),
      )
    ],
  );
}

final List<Chat> chats = [
  Chat(
    avatarUrl:
        'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
    title: "Anthony Hopkins",
  ),
  Chat(
    avatarUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
    title: "Gordon Freeman",
  ),
  Chat(
    avatarUrl:
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    title: "Ben Affleck",
  ),
  Chat(
    avatarUrl:
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    title: "Ben Affleck",
  ),
  Chat(
    avatarUrl:
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    title: "Ben Affleck",
  ),
  Chat(
    avatarUrl:
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    title: "Ben Affleck",
  ),
  Chat(
    avatarUrl:
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    title: "Ben Affleck",
  ),
];

class Chat {
  final String avatarUrl;
  final String title;

  Chat({
    required this.avatarUrl,
    required this.title,
  });
}

Widget _chartTitleAndWalletAmouont(
    {String? title, double? amount, bool isDebit = false}) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          CircleAvatar(
            radius: 15,
            child: const Icon(
              MdiIcons.equalizer,
              color: Colors.white,
              size: 15,
            ),
            backgroundColor: const Color(0xFF0DDC85).withOpacity(0.7),
          ),
          const SizedBox(width: 10.0),
          Text(
            title!,
            style: AppStyle.header.copyWith(
                fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
      Spacer(),
      Expanded(
        flex: 5,
        child: Text(amount.toString(),
            textAlign: TextAlign.right,
            style: AppStyle.header.copyWith(
              fontSize: 19,
              fontWeight: FontWeight.w700,
              color: isDebit ? Pallete.reddish : Pallete.lightGreen,
            )),
      ),
      Text('ETH',
          style: AppStyle.header.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ))
    ],
  );
}
