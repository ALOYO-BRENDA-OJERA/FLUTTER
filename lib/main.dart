import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 140, 187, 248)),
        useMaterial3: true,
      ),
      // home: const Login(title: 'Login'),
      home:const Signup(title:'signup'),
      debugShowCheckedModeBanner: false,
    );
  }
}

