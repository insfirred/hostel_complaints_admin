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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZavIXN9j3AR5pBmlFcBnuv5RnlVpGbno',
    appId: '1:703576979543:android:189afc3800767619778b12',
    messagingSenderId: '703576979543',
    projectId: 'hostel-complaints-a9745',
    storageBucket: 'hostel-complaints-a9745.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCO47JOAG3uOc_SEe1T_llZLpnT5SByVbI',
    appId: '1:703576979543:ios:7447e9cd6f02f2f9778b12',
    messagingSenderId: '703576979543',
    projectId: 'hostel-complaints-a9745',
    storageBucket: 'hostel-complaints-a9745.appspot.com',
    androidClientId: '703576979543-s0tilsp6koakp4a9gu9vo1vamn7p4le6.apps.googleusercontent.com',
    iosClientId: '703576979543-6b6m278bpptr7cj72ao8dgkupq2q013p.apps.googleusercontent.com',
    iosBundleId: 'com.example.hostelComplaintsAdmin',
  );
}
