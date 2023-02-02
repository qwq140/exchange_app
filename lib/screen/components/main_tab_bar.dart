import 'package:flutter/material.dart';

class MainTabBar extends StatelessWidget {
  final TabController tabController;

  const MainTabBar({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      indicatorColor: Colors.lightGreen,
      tabs: [
        Container(
          height: 56,
          alignment: Alignment.center,
          child: Text('전체 환율'),
        ),
        Container(
          height: 56,
          alignment: Alignment.center,
          child: Text('계산기'),
        ),
      ],
    );
  }
}
