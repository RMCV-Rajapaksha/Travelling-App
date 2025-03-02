import 'package:flutter/material.dart';
import 'package:travel_app/components/navigationBar.dart';
import 'package:travel_app/pages/Onboarding.dart';
import 'package:travel_app/pages/admin_add.dart';
import 'package:travel_app/pages/cart.dart';
import 'package:travel_app/pages/first.dart';
import 'package:travel_app/pages/home.dart';
import 'package:travel_app/pages/map.dart';
import 'package:travel_app/pages/profile.dart';
import 'package:travel_app/pages/signIn.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:travel_app/pages/signUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AdminMain(),
    );
  }
}
