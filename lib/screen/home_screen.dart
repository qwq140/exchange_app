import 'package:exchange_app/screen/components/main_tab_bar.dart';
import 'package:exchange_app/screen/components/main_tab_view.dart';
import 'package:exchange_app/utils/date_util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('기준 : ${DateUtil.getTimeFromDateTime(dateTime: DateTime.now())}', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          MainTabBar(tabController: _tabController),
          MainTabView(tabController: _tabController),
        ],
      ),
    );
  }
}
