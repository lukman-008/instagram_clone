import 'package:flutter/material.dart';
import 'package:instagram_clone/credential/sign_in_page.dart';
import 'package:instagram_clone/mainScreen/main_screen.dart';

import 'credential/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
    );
  }
}
