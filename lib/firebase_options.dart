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
    apiKey: 'AIzaSyA-U89-uDj2nYff6SBizNA6NO5s20OhucM',
    appId: '1:756861381005:web:ffa1be694704deabaab5c4',
    messagingSenderId: '756861381005',
    projectId: 'dbsandbox-f919b',
    authDomain: 'dbsandbox-f919b.firebaseapp.com',
    storageBucket: 'dbsandbox-f919b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAXrfzCynuXt0rQlGYZEl4BhbD77hDyfk',
    appId: '1:756861381005:android:2b9614cb9ddbf8dcaab5c4',
    messagingSenderId: '756861381005',
    projectId: 'dbsandbox-f919b',
    storageBucket: 'dbsandbox-f919b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA57exC0NnRLJH_7JzT8vriW4fdWLpTR3E',
    appId: '1:756861381005:ios:3c00f306c21f25edaab5c4',
    messagingSenderId: '756861381005',
    projectId: 'dbsandbox-f919b',
    storageBucket: 'dbsandbox-f919b.appspot.com',
    iosBundleId: 'com.example.dbTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA57exC0NnRLJH_7JzT8vriW4fdWLpTR3E',
    appId: '1:756861381005:ios:d6017e12f71362efaab5c4',
    messagingSenderId: '756861381005',
    projectId: 'dbsandbox-f919b',
    storageBucket: 'dbsandbox-f919b.appspot.com',
    iosBundleId: 'com.example.dbTest.RunnerTests',
  );
}
