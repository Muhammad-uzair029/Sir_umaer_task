import 'package:flutter/material.dart';
import 'package:twoPager/MainTabsScreen/mainMenu.dart';
import 'package:twoPager/Screens/MusicPage/MusicPlayerMain.dart';
import 'package:twoPager/Screens/ProductDetailScreen/DetailesScreen.dart';
import 'package:twoPager/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/MusicPlayer': (context) => MusicPlayer(),
        '/ProductDetails': (context) => Details()
      },
    );
  }
}
