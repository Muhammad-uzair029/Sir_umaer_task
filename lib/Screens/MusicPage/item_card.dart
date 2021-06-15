import 'package:flutter/material.dart';
import 'package:twoPager/Screens/MusicPage/models/Music.dart';

import 'package:twoPager/constants.dart';

class ItemCard extends StatelessWidget {
  final Music music;
  final Function press;
  const ItemCard({
    Key key,
    this.music,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(color: Colors.black, width: 1),
          ),
          color: Colors.black,
          elevation: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Image.asset(
                    music.image,
                  ),
                ),
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      music.title,
                      style: TextStyle(color: kTextLightColor),
                    ),
                    Icon(Icons.more_vert, color: Colors.grey)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${music.subtitle}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: Text(
                          "${music.size}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ]),
            ],
          ),
        ));
  }
}
