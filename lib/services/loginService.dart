import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stayfit_app/models/loginUser.dart';

class LoginService {
  LoginService() {
    Firebase.initializeApp();
  }

  UserModel? userModel;

  UserModel? get loggedInUserModel => userModel;

  Future<bool> signInWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return false;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    UserCredential userCreds =
        await FirebaseAuth.instance.signInWithCredential(credential);

    User? firebaseUser = userCreds.user;
    if (firebaseUser != null) {
      userModel = UserModel(
        displayName: firebaseUser.displayName,
        email: firebaseUser.email,
        photoURL: firebaseUser.photoURL,
        uid: firebaseUser.uid, 
      );
      printUserDetails(userModel!);

      bool isRegistered = await checkUserRegistration(userModel!.email!);
      if (isRegistered) {
        print('Kullanıcı zaten kayıtlı.');
      } else {
        await saveUserToFirestore(); 
      }
    } else {
      return false;
    }

    return true;
  }

  bool isSignedIn() {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    return currentUser != null;
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    userModel = null;
  }

  void printUserDetails(UserModel user) {
    print("Logged in user: ${user.displayName}");
    print("Email: ${user.email}");
    print("Photo URL: ${user.photoURL}");
  }

  Future<bool> checkUserRegistration(String email) async {
    final CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('users');

    QuerySnapshot querySnapshot =
        await usersCollection.where('email', isEqualTo: email).get();

    return querySnapshot.docs.isNotEmpty;
  }

  Future<void> saveUserToFirestore() async {
    if (userModel == null) {
      return;
    }

    try {
      final CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('users');

      await usersCollection.doc(userModel!.uid).set({
        'displayName': userModel!.displayName,
        'email': userModel!.email,
        'photoURL': userModel!.photoURL,
      });

      print('Kullanıcı Firestore\'a kaydedildi.');
    } catch (e) {
      print('Kullanıcıyı Firestore\'a kaydederken hata oluştu: $e');
    }
  }

  Future<List<UserModel>> getUserData() async {
    try {
      final CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('users');

      QuerySnapshot querySnapshot = await usersCollection.get();

      List<UserModel> users = [];

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        if (doc.exists) {
          UserModel user = UserModel(
            displayName: doc['displayName'],
            email: doc['email'],
            photoURL: doc['photoURL'],
            uid: doc.id, 
          );
          Random random = Random();
            for (var user in users) {
              user.stepCount = random.nextInt(10000); 
            }

          users.add(user);
        }
        
      }

      return users;
    } catch (e) {
      print('Kullanıcı verilerini alırken hata oluştu: $e');
      return [];
    }
  }
}
