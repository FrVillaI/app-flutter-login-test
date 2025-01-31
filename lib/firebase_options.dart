// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDMlKaK08VR3Y1hd7XBl97dk7ELY0n880w',
    appId: '1:849481760885:web:261f17d6828c79fa90b83c',
    messagingSenderId: '849481760885',
    projectId: 'app-preuba-iv',
    authDomain: 'app-preuba-iv.firebaseapp.com',
    databaseURL: 'https://app-preuba-iv-default-rtdb.firebaseio.com',
    storageBucket: 'app-preuba-iv.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxjrLXW6-AWrE1dwHAi8U8oh0_a4vT7QQ',
    appId: '1:849481760885:android:dcd5acfa7e942d3690b83c',
    messagingSenderId: '849481760885',
    projectId: 'app-preuba-iv',
    databaseURL: 'https://app-preuba-iv-default-rtdb.firebaseio.com',
    storageBucket: 'app-preuba-iv.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPDXA4UEh4vy8rg2akzzK2nXGOFiNqYlo',
    appId: '1:849481760885:ios:7ab8c38645d483c290b83c',
    messagingSenderId: '849481760885',
    projectId: 'app-preuba-iv',
    databaseURL: 'https://app-preuba-iv-default-rtdb.firebaseio.com',
    storageBucket: 'app-preuba-iv.appspot.com',
    iosBundleId: 'com.example.appLoginFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPDXA4UEh4vy8rg2akzzK2nXGOFiNqYlo',
    appId: '1:849481760885:ios:7ab8c38645d483c290b83c',
    messagingSenderId: '849481760885',
    projectId: 'app-preuba-iv',
    databaseURL: 'https://app-preuba-iv-default-rtdb.firebaseio.com',
    storageBucket: 'app-preuba-iv.appspot.com',
    iosBundleId: 'com.example.appLoginFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDMlKaK08VR3Y1hd7XBl97dk7ELY0n880w',
    appId: '1:849481760885:web:67ea17c3a6aa478690b83c',
    messagingSenderId: '849481760885',
    projectId: 'app-preuba-iv',
    authDomain: 'app-preuba-iv.firebaseapp.com',
    databaseURL: 'https://app-preuba-iv-default-rtdb.firebaseio.com',
    storageBucket: 'app-preuba-iv.appspot.com',
  );
}
