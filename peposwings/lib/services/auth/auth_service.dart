import 'package:firebase_auth/firebase_auth.dart';
class AuthService {
  //obtener instancia de firebase
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //obtener usuario
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }
  //registro
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

    return userCredential;
    }
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  //iniciar sesión
    Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

    return userCredential;
    }
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  //cerrar sesión
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}