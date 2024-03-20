import 'package:flutter/material.dart';
import 'package:tic_tac_toe/ui/players_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingInPage(),
    );
  }
}
