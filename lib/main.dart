import 'package:challenge_three/pages/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Health());
}

class Health extends StatelessWidget {
  const Health({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first_page(),
    );
      
  }
}

