import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCLeF79XJTV0DT4BLDF4ueLKIjG-cYz704',
    appId: '1:475131016953:web:d2b80b54d7d89d3fa6d428',
    messagingSenderId: '475131016953',
    projectId: 'first-app-cc101',
    authDomain: 'first-app-cc101.firebaseapp.com',
    databaseURL: 'https://first-app-cc101-default-rtdb.firebaseio.com',
    storageBucket: 'first-app-cc101.firebasestorage.app',
    measurementId: 'G-ZVDL0N9333',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA20PzT73IJtptkyD2u7FIdYugxd2o_fCQ',
    appId: '1:475131016953:android:b5dc52517b9d6f5ea6d428',
    messagingSenderId: '475131016953',
    projectId: 'first-app-cc101',
    databaseURL: 'https://first-app-cc101-default-rtdb.firebaseio.com',
    storageBucket: 'first-app-cc101.firebasestorage.app',
  );
}
