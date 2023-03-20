import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  
  Color themeColor;

  MainAppBar({this.themeColor = Colors.white});

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
   
}

class MainAppBarState extends State<MainAppBar> {
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
          width: 65, height: 65, 
          child: Image.asset(
            "assets/blackicon.png"
            )
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0.0,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(10),
              child: ClipOval(
                child: Image.asset("assets/ahmethoca.jpeg"),
              ),
            )
          ],
      );
  }
}
