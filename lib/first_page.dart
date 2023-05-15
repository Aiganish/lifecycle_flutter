import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lifecycle_flutter/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  int count = 0;
  int san = 2 + 2;
  Widget kosh() {
    // log('kosh ====> ${kosh}');
    return Text(
      san.toString(),
      style: const TextStyle(fontSize: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    log('build first page ===> ${count++}');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Page Stateless',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            },
            child: const Center(
              child: Text(
                'Go To Second Page',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          kosh(),
        ],
      ),
    );
  }
}
