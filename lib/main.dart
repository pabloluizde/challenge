import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCDSTr-k7MZ_3q-ppeCWeJ1blPjbxc18bc",
            authDomain: "challenge-3489f.firebaseapp.com",
            projectId: "challenge-3489f",
            storageBucket: "challenge-3489f.appspot.com",
            messagingSenderId: "304369704243",
            appId: "1:304369704243:web:5466f262798874f269b246"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}
