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
    apiKey: 'AIzaSyCr0G-TqTbRtkw3iFwXMp9Woec8hGvYI0M',
    appId: '1:691877729581:web:cae96528ce976354c8afa4',
    messagingSenderId: '691877729581',
    projectId: 'angkutkitaauth',
    authDomain: 'angkutkitaauth.firebaseapp.com',
    storageBucket: 'angkutkitaauth.appspot.com',
    measurementId: 'G-HD24M1JZJS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4mGevjW3hsx-a-DA538O455vTk9TvFuY',
    appId: '1:691877729581:android:851f830a0f96cadcc8afa4',
    messagingSenderId: '691877729581',
    projectId: 'angkutkitaauth',
    storageBucket: 'angkutkitaauth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3JCGcvqsPoe3JoaJ0mLPCpiXJUv02t10',
    appId: '1:691877729581:ios:3a731950e3e1d1bec8afa4',
    messagingSenderId: '691877729581',
    projectId: 'angkutkitaauth',
    storageBucket: 'angkutkitaauth.appspot.com',
    iosBundleId: 'com.example.angkotkita',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3JCGcvqsPoe3JoaJ0mLPCpiXJUv02t10',
    appId: '1:691877729581:ios:c4ec9c9cf2e9c2e3c8afa4',
    messagingSenderId: '691877729581',
    projectId: 'angkutkitaauth',
    storageBucket: 'angkutkitaauth.appspot.com',
    iosBundleId: 'com.example.angkotkita.RunnerTests',
  );
}
