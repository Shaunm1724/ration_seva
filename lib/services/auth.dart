import 'package:firebase_auth/firebase_auth.dart';

class AuthenticateService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  //sign in annonymously
  Future<User?> signInAnon() async {
    try {
      final UserCredential credential = await _auth.signInAnonymously();
      print('Signed In with temp account');
      return credential.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default: 
          print("Unknown error");
      }
    }
    return null;
  }


  // sign in with email and password

  // Sign up
  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return null;

  }

  // Sign in

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  // Sign out
  void signOut() async {
    _auth.signOut();
  }


  // creating user
  final user = FirebaseAuth.instance.currentUser;
  
}
