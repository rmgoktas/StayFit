import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stayfit_app/templates/loginuser.dart';

class LoginService {
  LoginService() {
    Firebase.initializeApp();
  }

  LoginUserCred? loginUserCred;

  LoginUserCred? get loggedInUserCred => loginUserCred;

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
    if (loginUserCred != null) {
      loginUserCred = LoginUserCred(
        name: loginUserCred!.name,
        email: loginUserCred!.email,
        photoUrl: loginUserCred!.photoUrl
  );
}
    return true;
  }

  void signOut() async {
    await GoogleSignIn().signOut();
    loginUserCred = null;
  }
}
