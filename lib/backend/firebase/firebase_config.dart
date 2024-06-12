import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDCxMN_dSwNK00jM8FeRty2kG4vlVOtUFM",
            authDomain: "fyp-01-c9e5b.firebaseapp.com",
            projectId: "fyp-01-c9e5b",
            storageBucket: "fyp-01-c9e5b.appspot.com",
            messagingSenderId: "909227935934",
            appId: "1:909227935934:web:34a4aa4474175fedfdf6ef"));
  } else {
    await Firebase.initializeApp();
  }
}
