// main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/Screens/splashscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: FirebaseOptions(
    apiKey: 'AIzaSyDOZt3hnYKM2V_ED1e8Z0dpyfQ8PTCau6I',
    authDomain: 'mindease-23a25.firebaseapp.com	',
    projectId: 'mindease-23a25',
    storageBucket: 'mindease-23a25.appspot.com',
    messagingSenderId: '735644917916',
    appId: '1:735644917916:android:69910bf1269301e3080d59',
  ),);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindease',
      home: SplashScreen(),
    );
  }
}
