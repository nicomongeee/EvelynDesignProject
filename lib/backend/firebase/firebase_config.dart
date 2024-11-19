import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD5PiTlK6byRxDrTi8SWIZZwwRmjQnLorA",
            authDomain: "evelyn-zamora-ed.firebaseapp.com",
            projectId: "evelyn-zamora-ed",
            storageBucket: "evelyn-zamora-ed.firebasestorage.app",
            messagingSenderId: "513153606849",
            appId: "1:513153606849:web:a31bd23fdfad4bcf9ca040",
            measurementId: "G-B7NHLPVWXG"));
  } else {
    await Firebase.initializeApp();
  }
}
