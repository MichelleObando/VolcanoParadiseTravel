import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAt6RSMCWArNXdDyzK0G2LkMZd0UpF2RQc",
            authDomain: "volcanoparadisetravelg7.firebaseapp.com",
            projectId: "volcanoparadisetravelg7",
            storageBucket: "volcanoparadisetravelg7.firebasestorage.app",
            messagingSenderId: "42650214790",
            appId: "1:42650214790:web:5a6c12db1c74a3c73ccc07",
            measurementId: "G-S1ZZ21FQJK"));
  } else {
    await Firebase.initializeApp();
  }
}
