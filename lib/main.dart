import 'package:flutter/material.dart';
import 'package:lifecycle_flutter/first_page.dart';

void main() {
  runApp(const LifeCycleFlutter());
}

class LifeCycleFlutter extends StatelessWidget {
  const LifeCycleFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
