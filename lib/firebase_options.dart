import 'package:firebase_core/firebase_core.dart';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:my_app/main.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (Platform.isAndroid) {
      return const FirebaseOptions(
        apiKey: "AIzaSyB78olw59dSAhFxyqGy5XyzINKIpk75g-0",
        authDomain: "your-auth-domain",
        projectId: "vote-sys-iai",
        storageBucket: "vote-sys-iai.appspot.com",
        messagingSenderId: "your-android-messaging-sender-id",
        appId: "1:296850755712:android:0a9599f684a3d03a5d966",
      );
    } else if (Platform.isIOS) {
      return const FirebaseOptions(
        apiKey: "AIzaSyCoOJUNK_7PVQRli59T5f1eoEro0kqdBAE",
        authDomain: "your-auth-domain",
        projectId: "vote-sys-iai",
        storageBucket: "vote-sys-iai.firebasestorage.app",
        messagingSenderId: "your-ios-messaging-sender-id",
        appId: "1:296850755712:ios:8a6ff15c065716fd5d9665",
        iosClientId: "your-ios-client-id",
        iosBundleId: "com.example.myApp",
      );
    } else {
      return const FirebaseOptions(
        apiKey: "AIzaSyCFp7ty95Bm7wxZLcx7zxBSKid5LLShrfQ",
        authDomain: "vote-sys-iai.firebaseapp.com",
        projectId: "vote-sys-iai",
        storageBucket: "vote-sys-iai.appspot.com",
        messagingSenderId: "your-web-messaging-sender-id",
        appId: "1:296850755712:web:118d39935d6b7cd65d9665",
      );
    }
  }
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}
