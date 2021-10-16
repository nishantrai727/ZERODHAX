import 'package:flutter/material.dart';

import '../models/sizeconfig.dart';

import '../widgets/watchlist.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TabController tabController;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Color(0xFFEEEEEE),
          title: Text(
            "Marketwatch",
            style: TextStyle(
              fontSize: 27,
              color: Colors.black
            ),
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
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.blue,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              labelPadding: EdgeInsets.symmetric(horizontal: 25),
              tabs: [
                Tab(
                  text: "Watchlist 1",
                ),
                Tab(
                  text: "Watchlist 2",
                ),
                Tab(
                  text: "Watchlist 3",
                ),
                Tab(
                  text: "Watchlist 4",
                ),
                Tab(
                  text: "Watchlist 5",
                ),

              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
              Watchlist(),
              Watchlist(),
              Watchlist(),
              Watchlist(),
              Watchlist(),
          ],
        ),
      ),
    );
  }
}
