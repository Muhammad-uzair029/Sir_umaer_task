import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  

 @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueAccent,
      
      body:
   Container(
    height: MediaQuery.of(context).size.height,
    alignment: Alignment.center,
     child: 
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
     children: [

       Text("Job Task",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
    SizedBox(height: 40), 
     TextButton(
      child: Text(
        "Music Player".toUpperCase(),
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.white)
          )
        )
      ),
      onPressed: () => Navigator.pushReplacementNamed(context, '/MusicPlayer'),
    ),
    SizedBox(height: 40), 
     TextButton(
      child: Text(
        "Product Details".toUpperCase(),
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.white)
          )
        )
      ),
      onPressed: () =>   Navigator.pushNamed(context, '/ProductDetails'),
    ),
    // SizedBox(: 10),
       
     ],  
    )));
  }
}