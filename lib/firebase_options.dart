import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return FirebaseOptions(
      apiKey: "your-api-key",
      authDomain: "your-auth-domain",
      projectId: "vote-sys-iai",
      storageBucket: "vote-sys-iai.firebasestorage.app",
      messagingSenderId: "your-messaging-sender-id",
      appId: "1:296850755712:android:0a9599f684a3d03a5d9665",
    );
  }
}
