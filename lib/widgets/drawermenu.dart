import 'package:flutter/material.dart';

import '../pages/airconditionpage.dart';
import '../pages/welcomepage.dart';
import '../services/loginService.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  String _getUserName() {
  if (LoginService().loggedInUserModel != null) {
    return LoginService().loggedInUserModel!.displayName ?? "Guest User";
  } else {
    return "Guest User";
  }
}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "StayFit App",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Hello, ${_getUserName()}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            child: ListTile(
              title: Text(
                "Air Pollution Meter",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AirConditionPage()),
              );
            },
          ),
          TextButton(
            child: ListTile(
              title: Text(
                "Sign Out",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onPressed: () {
              LoginService().signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
