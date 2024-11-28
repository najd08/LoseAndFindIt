import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAiy__8gDr_W2QnbfwpdyKZsAT0FIwE59w",
            authDomain: "lab7-mq7uns.firebaseapp.com",
            projectId: "lab7-mq7uns",
            storageBucket: "lab7-mq7uns.appspot.com",
            messagingSenderId: "38803718133",
            appId: "1:38803718133:web:6cfb6d1e163b1a81376abc"));
  } else {
    await Firebase.initializeApp();
  }
}
