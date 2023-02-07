import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBv7br70lWi43ERP9AZialJK-n8h6L88BQ",
            authDomain: "emisurvey-be5b8.firebaseapp.com",
            projectId: "emisurvey-be5b8",
            storageBucket: "emisurvey-be5b8.appspot.com",
            messagingSenderId: "966589387691",
            appId: "1:966589387691:web:e8e9ee2ff049c54c4878ee",
            measurementId: "G-NVET34MCZL"));
  } else {
    await Firebase.initializeApp();
  }
}
