import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBFJMdNsHdYK-cupRJ7yJgb0IiYW7YDJ44",
            authDomain: "galeriejosephine-e3f60.firebaseapp.com",
            projectId: "galeriejosephine-e3f60",
            storageBucket: "galeriejosephine-e3f60.appspot.com",
            messagingSenderId: "481466542722",
            appId: "1:481466542722:web:cf871a86813d59f1ad629b"));
  } else {
    await Firebase.initializeApp();
  }
}
