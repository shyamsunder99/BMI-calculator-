import 'package:bmi_calculator_app/inputdart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA2VhtzJkqVwNDSkcxqvPzst-jLHiKPKdk",
      projectId: "bmi-c6e38",
      messagingSenderId: "820402686688",
      appId: "1:820402686688:web:a37be139b6287a0e1f1e85",
    ),
  );
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.yellow,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: inputpage(),
    );
  }
}
