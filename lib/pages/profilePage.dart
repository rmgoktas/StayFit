import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stayfit_app/models/loginUser.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import '../services/loginService.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserModel? userModel;
  bool _isLoading = true;
  late String displayName;
  late String email;
  late String photoURL;

  @override
  void initState() {
    super.initState();
    initUserModel();
  }

  Future<void> initUserModel() async {
    await updateUserModel();
    await updateProfileInfo();
  }



Future<void> updateProfileInfo() async {
  final currentUser = FirebaseAuth.instance.currentUser;

  if (currentUser != null) {
    setState(() {
      displayName = currentUser.displayName ?? '';
      email = currentUser.email ?? '';
      photoURL = currentUser.photoURL ?? '';
    });
  } else {
    setState(() {
      displayName = '';
      email = '';
      photoURL = '';
    });
  }
}


  Future<void> updateUserModel() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      List<UserModel> users = await LoginService().getUserData();
      print('User data: $users'); 
      final user = users.firstWhere(
        (user) => user.uid == firebaseUser.uid,
        orElse: () => UserModel.emptyUser(),
      );
      if (user.uid != '') {
        setState(() {
          userModel = user;
          _isLoading = false;
        });
        await updateProfileInfo(); // Profil bilgilerini günceller
      } else {
        setState(() {
          userModel = null;
          _isLoading = false;
        });
      }
    } else {
      setState(() {
        userModel = null;
        _isLoading = false;
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
            : userModel != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: photoURL.isNotEmpty ? NetworkImage(photoURL) : null,
                        radius: 80,
                      ),
                      SizedBox(height: 16),
                      Text(
                        userModel!.displayName ?? displayName,
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        userModel!.email ?? email,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 16),
                    ],
                  )
                : Text('User information is not available.'),
      ),
    );
  }
}
