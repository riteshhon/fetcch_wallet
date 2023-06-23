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
    apiKey: 'AIzaSyCldOUpusnE3CTY7ZI5h4YsgAQG4_ZBjuQ',
    appId: '1:851553245963:web:a7025f96b3ff9124c2200e',
    messagingSenderId: '851553245963',
    projectId: 'fetcch-wallet-665df',
    authDomain: 'fetcch-wallet-665df.firebaseapp.com',
    storageBucket: 'fetcch-wallet-665df.appspot.com',
    measurementId: 'G-BQ7TB7VJVX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_9CXw4L03THTrqpLY6a4XyXts6qgDyYU',
    appId: '1:851553245963:android:2d2f5c96f9332551c2200e',
    messagingSenderId: '851553245963',
    projectId: 'fetcch-wallet-665df',
    storageBucket: 'fetcch-wallet-665df.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJ8bzmUk5AVc7Tny8MHCGABaykauD6uTY',
    appId: '1:851553245963:ios:166f3b03fa9fd73bc2200e',
    messagingSenderId: '851553245963',
    projectId: 'fetcch-wallet-665df',
    storageBucket: 'fetcch-wallet-665df.appspot.com',
    iosClientId: '851553245963-akoqrcckdua323n7cf7cuqqre4bp1a2h.apps.googleusercontent.com',
    iosBundleId: 'com.example.fetcchWallet',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJ8bzmUk5AVc7Tny8MHCGABaykauD6uTY',
    appId: '1:851553245963:ios:166f3b03fa9fd73bc2200e',
    messagingSenderId: '851553245963',
    projectId: 'fetcch-wallet-665df',
    storageBucket: 'fetcch-wallet-665df.appspot.com',
    iosClientId: '851553245963-akoqrcckdua323n7cf7cuqqre4bp1a2h.apps.googleusercontent.com',
    iosBundleId: 'com.example.fetcchWallet',
  );
}
