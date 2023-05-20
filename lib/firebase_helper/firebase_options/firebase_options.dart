import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:252769608934:ios:dd359a062dfafdb2eb4727',
        apiKey: 'AIzaSyB680kRNRNWb25qXz0htVy93NqmBCUpXkY',
        projectId: 'e-mart-62144',
        messagingSenderId: '252769608934',
        iosBundleId: 'com.example.eMart',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:252769608934:android:53a9783d5274bf03eb4727',
        apiKey: 'AIzaSyAx0CDNio8Kk2e-PnyvG29_LFdd75g7mFE',
        projectId: 'e-mart-62144',
        messagingSenderId: '252769608934',
      );
    }
  }
}
