import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBx1ZPzScRxpgAPdBMNIunGMqac_kiJV3E",
            authDomain: "top-worker-skills-devel-5l9k5x.firebaseapp.com",
            projectId: "top-worker-skills-devel-5l9k5x",
            storageBucket: "top-worker-skills-devel-5l9k5x.appspot.com",
            messagingSenderId: "308769128405",
            appId: "1:308769128405:web:8d9dd9079e208dd114475c"));
  } else {
    await Firebase.initializeApp();
  }
}
