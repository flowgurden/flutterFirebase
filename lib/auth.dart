



import 'package:firebase_auth/firebase_auth.dart';


class Auth{
  final FirebaseAuth _FirebaseAuth = FirebaseAuth.instance;
  User? get  currentUser => _FirebaseAuth.currentUser;
  Stream<User?> get authStateChanges => _FirebaseAuth.authStateChanges();


  Future<void>signInWitchEmailandPassword({

    required String email,
     required String password,



  })async {
    await _FirebaseAuth.signInWithEmailAndPassword(
      email : email,
      password: password,
    );
  }
  Future<void>createUserWitchEmailAndPassword({
    required String email,
    required String password,
  })async{
    await _FirebaseAuth.createUserWithEmailAndPassword(
      email:email,
      password: password,
      
    );
  }

  Future<void>signOut()async{
    await _FirebaseAuth.signOut();

}


}