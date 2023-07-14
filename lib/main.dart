import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_register_workout/firebase_options.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
