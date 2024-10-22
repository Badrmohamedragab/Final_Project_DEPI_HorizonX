import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:horizonx/screens/search_screen.dart';
import 'package:horizonx/screens/splash_screen.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HorizonX());
}

class HorizonX extends StatelessWidget {
  const HorizonX({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
