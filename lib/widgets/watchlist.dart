import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../models/sizeconfig.dart';

class Watchlist extends StatefulWidget {
  @override
  _WatchlistState createState() => _WatchlistState();
}

class _WatchlistState extends State<Watchlist> {
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
              color: Color(0xFFEEEEEE),
              height: SizeConfig.blockSizeVertical * 10),
          Positioned(
            top: SizeConfig.blockSizeVertical * 2,
            left: SizeConfig.blockSizeHorizontal * 4,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    blurRadius: 13,
                    color: Colors.black.withOpacity(0.03),
                    offset: Offset(1, 7))
              ]),
              width: SizeConfig.blockSizeHorizontal * 92,
              height: SizeConfig.blockSizeVertical * 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: Icon(
                      AntDesign.search1,
                      color: Colors.grey,
                      size: 22,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xFFEEEEEE),
                          hintText: "Search & add"),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      "2/50",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Icon(
                      Octicons.settings,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: SizeConfig.blockSizeVertical * 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("INFY"),
                            Text(
                              "1200.40",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 1),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "NSE",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(
                              "+2.75 (+0.28%)",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("MOTHERSON SUMI"),
                            Text(
                              "1800.40",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 1),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "NSE",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(
                              "+2.75 (+0.28%)",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
