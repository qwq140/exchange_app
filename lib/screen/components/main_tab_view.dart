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
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            children: [
              Text(
                  '기준 : ${DateUtil.getTimeFromDateTime(dateTime: DateTime.now())}'),
              const SizedBox(height: 12),
              ...List.generate(
                13,
                (index) => Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                      ),
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('미국 달러'),
                      Text('1,231.60'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
