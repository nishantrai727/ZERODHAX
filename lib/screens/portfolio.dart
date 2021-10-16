import 'package:flutter/material.dart';

import '../models/sizeconfig.dart';

import '../widgets/holdings.dart';
import '../widgets/positions.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Color(0xFFEEEEEE),
          title: Text(
            "Portfolio",
            style: TextStyle(fontSize: 27, color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.keyboard_arrow_down,
              size: 45,
              color: Colors.black,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: Column(
              children: [
                TabBar(
                  controller: tabController,
                  indicatorColor: Colors.blue,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                  labelColor: Colors.black,
                  labelPadding: EdgeInsets.symmetric(horizontal: 70),
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "Holdings",
                    ),
                    Tab(
                      text: "Positions",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Holdings(),
            Positions(),
          ],
        ),
      ),
    );
  }
}
