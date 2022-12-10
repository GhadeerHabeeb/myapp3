import 'package:flutter/material.dart';
import 'package:myapp3/PageOne.dart';


void main() => runApp(const LogoApp());

class LogoApp extends StatefulWidget {
  const LogoApp({super.key});

  @override
  State<LogoApp> createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}