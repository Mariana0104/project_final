import 'package:flutter/material.dart';
import 'package:proyect_gibhub/pages/mobile_league.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MobileLeague(),
    );
  }
}
