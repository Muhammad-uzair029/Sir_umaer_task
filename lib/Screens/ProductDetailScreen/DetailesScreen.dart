import 'package:flutter/material.dart';
import 'package:twoPager/constants.dart';

import 'package:twoPager/Screens/ProductDetailScreen/counter_with_fav_btn.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  alignment: Alignment.centerRight,
                  child: ToggleSwitch(
                    minWidth: 60.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.redAccent],
                      [Colors.white]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['YES', 'No'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  )),

              Stack(children: <Widget>[
                Row(
                  children: [],
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.82,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ))),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.82,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20, right: 20, top: 20),
                                    child: MediaQuery.of(context).orientation ==
                                            Orientation.landscape
                                        ? Hero(
                                            tag: "Musicc",
                                            child: Image.asset(
                                              'assets/images/bag_1.png',
                                              fit: BoxFit.fill,
                                              height: 100,
                                              width: 100,
                                            ))
                                        : Hero(
                                            tag: "Musicc",
                                            child: Image.asset(
                                              'assets/images/bag_1.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ))),
                          ],
                        ),
                        Text(
                          "Gental Skin cleanser",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        SizedBox(height: 20),
                        Text("\$ 12.29", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: Text(
                                'DetailssDetailsDetaiilssDetailsDetailsDetailsDetsDetailsDetailsDetailsDetailsDetailsDetailsDetails',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14))),
                        SizedBox(height: 35),
                        Text("View More",
                            style: TextStyle(color: Colors.white)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Divider(
                              color: Colors.white,
                              height: 20,
                              thickness: 4,
                            )),
                      ],
                    )),
              ]),
              //  SizedBox(height: kDefaultPaddin),
              Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: CounterWithTxtBtn())
            ],
          )),
        ));
  }
}
