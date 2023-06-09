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
    apiKey: 'AIzaSyC3ehdiImEgPSVqwi1RvhvxcXqC0lSDwxA',
    appId: '1:345793722280:web:a94d4507dabc1906318f9d',
    messagingSenderId: '345793722280',
    projectId: 'billbreaker-576f7',
    authDomain: 'billbreaker-576f7.firebaseapp.com',
    storageBucket: 'billbreaker-576f7.appspot.com',
    measurementId: 'G-MBQ1DGX0WW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwww6BYzRuHyENDt58nq3ch0XjGNicUd4',
    appId: '1:345793722280:android:f9b6e96ad5147ee9318f9d',
    messagingSenderId: '345793722280',
    projectId: 'billbreaker-576f7',
    storageBucket: 'billbreaker-576f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQs5WA66iX9-7NyMHywTQydnL1RxrJy0w',
    appId: '1:345793722280:ios:5c34224cb15fbc83318f9d',
    messagingSenderId: '345793722280',
    projectId: 'billbreaker-576f7',
    storageBucket: 'billbreaker-576f7.appspot.com',
    iosBundleId: 'com.example.billbreaker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQs5WA66iX9-7NyMHywTQydnL1RxrJy0w',
    appId: '1:345793722280:ios:5c34224cb15fbc83318f9d',
    messagingSenderId: '345793722280',
    projectId: 'billbreaker-576f7',
    storageBucket: 'billbreaker-576f7.appspot.com',
    iosBundleId: 'com.example.billbreaker',
  );
}
