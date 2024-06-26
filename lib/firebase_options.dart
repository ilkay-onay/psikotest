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
    apiKey: '',
    appId: '1:528588173703:web:a3fa29d0756b0c7e976322',
    messagingSenderId: '528588173703',
    projectId: 'psikoanalizci',
    authDomain: 'psikoanalizci.firebaseapp.com',
    databaseURL: 'https://psikoanalizci-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'psikoanalizci.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: '',
    appId: '1:528588173703:android:995c7c78e52e7fdc976322',
    messagingSenderId: '528588173703',
    projectId: 'psikoanalizci',
    databaseURL: 'https://psikoanalizci-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'psikoanalizci.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: '',
    appId: '1:528588173703:ios:e725f080d73da5de976322',
    messagingSenderId: '528588173703',
    projectId: 'psikoanalizci',
    databaseURL: 'https://psikoanalizci-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'psikoanalizci.appspot.com',
    iosBundleId: 'com.example.psikoTestApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: '',
    appId: '1:528588173703:ios:9d77d829b9db37e7976322',
    messagingSenderId: '528588173703',
    projectId: 'psikoanalizci',
    databaseURL: 'https://psikoanalizci-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'psikoanalizci.appspot.com',
    iosBundleId: 'com.example.psikoTestApp.RunnerTests',
  );
}
