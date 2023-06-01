// ignore_for_file: await_only_futures, unused_local_variable

import 'package:flutter/material.dart';
import 'package:stayfit_app/pages/exerciseListPage.dart';
import '../models/loginUser.dart';
import '../pages/airconditionPage.dart';
import '../pages/exerciseDailyPage.dart';
import '../pages/welcomePage.dart';
import '../services/loginService.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String _userName = "";

  @override
  void initState() {
  super.initState();
  checkSignInStatus();
  print(_getUserName());
}

  Future<void> checkSignInStatus() async {
    final LoginService loginService = LoginService();
    final bool signedIn = await loginService.isSignedIn();
    setState(() {
      _userName = _getUserName();
    });
  }

  String _getUserName() {
    final UserModel? user = LoginService().loggedInUserModel;
    if (user != null && user.displayName != null) {
      return user.displayName!;
    } else {
      return "Guest User";
    }
  }
  

  void _showSignOutMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You have been signed out.'),
      ),
    );
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
                  "Hello,",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _userName,
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
                "Home",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExerciseListPage()),
              );
            },
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
                "Exercise Daily",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExerciseDailyPage()),
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
              final LoginService loginService = LoginService();
              loginService.signOut();
              setState(() {
                _userName = _getUserName();
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
              _showSignOutMessage();
            },
          ),
        ],
      ),
    );
  }
}
