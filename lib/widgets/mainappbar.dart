// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;

  MainAppBar({super.key, this.themeColor = Colors.white});

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
          width: 65, height: 65, child: Image.asset("assets/blackicon.png")),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0.0,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          padding: const EdgeInsets.all(10),
          child: ClipOval(
            child: Image.asset("assets/appBar/profile.png"),
          ),
        )
      ],
    );
  }
}
