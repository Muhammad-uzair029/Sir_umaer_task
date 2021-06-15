import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:shop_app/json/songs_json.dart';
// import 'package:shop_app/pages/album_page.dart';
// import 'package:shop_app/theme/colors.dart';

import 'package:twoPager/Screens/MusicPage/theme/colors.dart';
import 'package:twoPager/Screens/MusicPage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:twoPager/constants.dart';
import 'package:twoPager/Screens/MusicPage/models/Music.dart';
// import 'package:twoPager/screens/details/details_screen.dart';

import 'package:twoPager/Screens/MusicPage/item_card.dart';

const List song_type_1 = [
  "All Song",
  "Playlist",
  "Artist",
  "Genres",
  "Pop",
  "R&B",
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  int activeMenu2 = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: black,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Entypo.list),
              Text(
                "Song",
                style: TextStyle(
                    fontSize: 20, color: white, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.search),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                  children: List.generate(song_type_1.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activeMenu1 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_1[index],
                          style: TextStyle(
                              fontSize: 15,
                              decoration: activeMenu1 == index
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                              decorationThickness: 3,
                              color:
                                  activeMenu1 == index ? Colors.orange : grey,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activeMenu1 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: primary,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
        ]),
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPaddin),
                      child: GridView.builder(
                          itemCount: Musics.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 2
                                    : 3,
                            mainAxisSpacing: kDefaultPaddin,
                            crossAxisSpacing: kDefaultPaddin,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (context, index) => ItemCard(
                                music: Musics[index],
                              )),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
