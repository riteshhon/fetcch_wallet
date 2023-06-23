import 'package:fetcch_wallet/main.dart';
import 'package:fetcch_wallet/screens/getstarted_screen/getstarted_screen_view.dart';
import 'package:fetcch_wallet/screens/home_screen/bottom_nav_screen/home_screen.dart';
import 'package:fetcch_wallet/screens/home_screen/home_vm.dart';
import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {
  // handle auth state
  handleAuthState(BuildContext context, HomeViewModel viewModel) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen(
            mainContext: context,
            viewModel: viewModel,
          );
        } else {
          return const GetStartedScreen();
        }
      },
    );
  }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final GoogleSignIn googleSignIn = GoogleSignIn();
    googleSignIn.signOut();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
        if (user!.uid.isNotEmpty) {
          // ignore: use_build_context_synchronously
          navService
              .pushNamedAndRemoveUntil(NavigationConstants.PROTECTWALLETROUTE);
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        } else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }

    return user;
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
