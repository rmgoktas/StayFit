import 'package:flutter/material.dart';
import 'package:stayfit_app/pages/exerciseListPage.dart';
import '../models/loginUser.dart';
import '../pages/airconditionPage.dart';
import '../pages/exerciseDailyPage.dart';
import '../pages/leaderboardPage.dart';
import '../pages/welcomePage.dart';
import '../services/loginService.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String _userName = "";
  final LoginService loginService = LoginService();

  @override
  void initState() {
    super.initState();
    checkSignInStatus();
  }

  Future<void> checkSignInStatus() async {
    final bool signedIn = await loginService.isSignedIn();
    
    if (signedIn) {
      await _getUserName();
    } else {
      setState(() {
        _userName = "Guest User";
      });
    }
  }

  Future<void> _getUserName() async {
    List<UserModel> users = await loginService.getUserData();

    if (users.isNotEmpty) {
      UserModel user = users[0];

      if (user.displayName != null && user.displayName!.isNotEmpty) {
        setState(() {
          _userName = user.displayName!;
        });
      } else if (user.email != null && user.email!.isNotEmpty) {
        setState(() {
          _userName = user.email!;
        });
      } else {
        setState(() {
          _userName = "Guest User";
        });
      }
    } else {
      setState(() {
        _userName = "Guest User";
      });
    }
  }

  void _showSignOutMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You have been signed out.'),
      ),
    );
    
    setState(() {
      _userName = "Guest User";
    });

    checkSignInStatus();
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
                "Step Leaderboard",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onPressed: () async {
              final LoginService loginService = LoginService();
              final bool signedIn = await loginService.isSignedIn();
              if (signedIn) {
                List<UserModel> users = await loginService.getUserData();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LeaderboardPage(users: users),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You need to sign in first.'),
                  ),
                );
              }
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
              _showSignOutMessage();
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
