// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCyqx7QmNECvMISIOWyE5JCgLiyfazH1P4',
    appId: '1:56514648473:web:d6592293ea4a56eb47db08',
    messagingSenderId: '56514648473',
    projectId: 'login-register-applicati-91db0',
    authDomain: 'login-register-applicati-91db0.firebaseapp.com',
    storageBucket: 'login-register-applicati-91db0.appspot.com',
    measurementId: 'G-BCJ6SVFCB5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYwl3V63SUjoUX6vXM9I-7lyVf4OpIo1Q',
    appId: '1:56514648473:android:1d9ab97d1b06df2b47db08',
    messagingSenderId: '56514648473',
    projectId: 'login-register-applicati-91db0',
    storageBucket: 'login-register-applicati-91db0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCE6UBKH_mVHnZMxMbNNgSXt-IsTscDI5s',
    appId: '1:56514648473:ios:d0b105def06e2f4b47db08',
    messagingSenderId: '56514648473',
    projectId: 'login-register-applicati-91db0',
    storageBucket: 'login-register-applicati-91db0.appspot.com',
    iosClientId: '56514648473-atnoqco8or3dqbpg9jriae0aitmmi9aj.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginRegisterWorkout',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCE6UBKH_mVHnZMxMbNNgSXt-IsTscDI5s',
    appId: '1:56514648473:ios:d0b105def06e2f4b47db08',
    messagingSenderId: '56514648473',
    projectId: 'login-register-applicati-91db0',
    storageBucket: 'login-register-applicati-91db0.appspot.com',
    iosClientId: '56514648473-atnoqco8or3dqbpg9jriae0aitmmi9aj.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginRegisterWorkout',
  );
}
