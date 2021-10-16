import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../models/sizeconfig.dart';

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            color: Color(0xFFEEEEEE),
            height: SizeConfig.blockSizeVertical * 10,
          ),
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
                          hintText: "Search orders"),
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0xFFE4F0F6)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 3),
                                child: Text(
                                  "BUY",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 1),
                              Text(
                                "0 / 1000",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "5 min ago",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal * 1,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.grey[100]),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 3),
                                child: Text(
                                  "AMO REQ...",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 1,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("IDEA"),
                            Text("6.55"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 1,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'NSE',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 2,
                                ),
                                Text(
                                  'CNC',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 2,
                                ),
                                Text(
                                  'LIMIT',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              ],
                            ),
                            Text(
                              'LTP 6.55',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1,),
        ],
      ),
    );
  }
}
