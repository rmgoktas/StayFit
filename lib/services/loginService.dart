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
      );
      printUserDetails(userModel!); 
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
}
