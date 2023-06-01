import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stayfit_app/models/loginUser.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

import '../services/loginService.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserModel? user;
  late SharedPreferences? prefs;
  late int height = 178;
  late int weight = 63;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    user = LoginService().loggedInUserModel;
    initSharedPreferences();
  }

  Future<void> initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      weight = prefs!.getInt('weight') ?? 60;
      height = prefs!.getInt('height') ?? 170;
      _isLoading = false;
    });
  }

  void incrementWeight() {
    if (!_isLoading) {
      setState(() {
        weight++;
        prefs!.setInt('weight', weight);
      });
    }
  }

  void decrementWeight() {
    if (!_isLoading) {
      setState(() {
        if (weight > 0) {
          weight--;
          prefs!.setInt('weight', weight);
        }
      });
    }
  }

  void incrementHeight() {
    if (!_isLoading) {
      setState(() {
        height++;
        prefs!.setInt('height', height);
      });
    }
  }

  void decrementHeight() {
    if (!_isLoading) {
      setState(() {
        if (height > 0) {
          height--;
          prefs!.setInt('height', height);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: user?.photoURL != null ? NetworkImage(user!.photoURL!) : null,
                    radius: 80,
                  ),
                  SizedBox(height: 16),
                  Text(
                    user?.displayName ?? '',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: decrementHeight,
                        child: Icon(Icons.remove),
                      ),
                      Text(
                        "Height: $height",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: incrementHeight,
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: decrementWeight,
                        child: Icon(Icons.remove),
                      ),
                      Text(
                        "Weight: $weight",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: incrementWeight,
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
