import 'package:exchange_app/screen/components/calculate_tab_view.dart';
import 'package:exchange_app/screen/components/exchange_rate_tab_view.dart';
import 'package:exchange_app/utils/date_util.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatelessWidget {
  final TabController tabController;

  const MainTabView({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          ExchangeRateTabView(),
          CalculateTabView(),
        ],
      ),
    );
  }
}
