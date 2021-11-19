import 'package:firebase_auth/firebase_auth.dart';
import 'package:faality/models/user.dart' as u;

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  // create user obj based on firebaseuser

  u.User? _userFromFirebaseUser(User user){
    return user != null ? u.User(uid: user.uid) : null;
  }


  // auth change user stream
  Stream<u.User?> get user {
    return _auth.authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
  }


  // sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // register with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch(e){
      print(e.toString());
      return null;
    }
  }



  // sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }
  }


}