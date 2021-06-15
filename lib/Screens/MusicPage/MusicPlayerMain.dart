import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
// import 'package:twoPager/pages/home_page.dart';
// import 'package:twoPager/theme/colors.dart';
import 'package:twoPager/Screens/MusicPage/theme/colors.dart';
import 'package:twoPager/Screens/MusicPage/home_page.dart';

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center(
          child: Text(
            "Music",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Menu",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Setting",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Feather.music,
      Feather.menu,
      Feather.settings,
    ];
    return Container(
      height: 155,
      child: Column(
        children: [
          playShown(),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40, top: 10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(items.length, (index) {
                  return IconButton(
                      icon: Icon(
                        items[index],
                        color: activeTab == index ? Colors.orange : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          activeTab = index;
                        });
                      });
                })),
          )
        ],
      ),
    );
  }

  Widget playShown() {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.blue])),
        child: SizedBox(
          height: 70,
          child: ListTile(
              leading: Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        'https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI'),
                    backgroundColor: Colors.transparent,
                  )),
              title: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "Trix's airplane",
                    style: TextStyle(color: Colors.white),
                  )),
              dense: MediaQuery.of(context).orientation == Orientation.portrait
                  ? false
                  : true,
              subtitle: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: const Text(
                    'The airplane is only in Act II.',
                    style: TextStyle(color: Colors.white),
                  )),
              trailing: Wrap(
                spacing:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 12
                        : 20, // space between two icons
                children: <Widget>[
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 25,
                  ), // icon-1
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 25,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 25,
                  )
                  // icon-2
                ],
              ),
              onTap: () => print("ListTile")),
        ));
  }
}
