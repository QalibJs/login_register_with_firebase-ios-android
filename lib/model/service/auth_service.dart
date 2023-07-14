import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService._();
  static Future<void> register(
    String email,
    String password,
  ) async {
     await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  static Future<void> logout() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();
  }

  static Future<void> login(
    String email,
    String password,
  ) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
