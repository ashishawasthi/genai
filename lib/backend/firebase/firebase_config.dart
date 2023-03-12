import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyASyOlte_ajagNOWJsJ2kcW8EhC7kKVgRg",
            authDomain: "generativai.firebaseapp.com",
            projectId: "generativai",
            storageBucket: "generativai.appspot.com",
            messagingSenderId: "371379231137",
            appId: "1:371379231137:web:39cbab9bba9ff8b67fd3e0",
            measurementId: "G-ZH4YYW07HC"));
  } else {
    await Firebase.initializeApp();
  }
}
