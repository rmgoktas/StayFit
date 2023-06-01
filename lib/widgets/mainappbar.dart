import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/profilePage.dart';

// ignore: must_be_immutable
class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color color;

  MainAppBar({super.key, this.color = Colors.white});

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {
  String photoURL = "";

  @override
  void initState() {
    super.initState();
    updateProfileImageUrl();
  }

  void updateProfileImageUrl() {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      setState(() {
        if (currentUser.photoURL != null) {
          photoURL = currentUser.photoURL!;
        } else {
          photoURL = "";
        }
      });
    } else {
      setState(() {
        photoURL = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
          width: 65, height: 65, child: Image.asset("assets/blackicon.png")),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      actions: [
        GestureDetector(
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(10),
            child: ClipOval(
              child: photoURL.isNotEmpty
                  ? Image.network(
                      photoURL,
                      fit: BoxFit.cover,
                      width: 35,
                      height: 40,
                    )
                  : Image.asset(
                      "assets/appBar/profile.png",
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        )
      ],
    );
  }
}
