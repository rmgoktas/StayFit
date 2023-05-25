import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stayfit_app/models/loginUser.dart';

class LoginService {
  LoginService() {
    Firebase.initializeApp();
  }

  LoginUserModel? userModel;

  LoginUserModel? get loggedInUserModel => userModel;

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
print(userCreds.user);
userModel = LoginUserModel(
  displayName: userCreds.user!.displayName,
  email: userCreds.user!.email,
  photoUrl: userCreds.user!.photoURL,
);
    return true;
  }

  void signOut() async {
    await GoogleSignIn().signOut();
    userModel = null;
  }
}
