import 'dart:developer';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);
  int number = 0;

  @override
  _SecondPageState createState() {
    log('CreateState ====> ${number++}');
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    log('initState ===>');

    super.initState();
  }

  @override
  void didChangeDependencies() {
    log('didChangeDependencies ====>');
    Future.delayed(Duration.zero, () {
      this._showMyDialog();
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    log('dispote====>');
    super.dispose();
  }

  int number = 0;
  int nomer = 0;
  int san = 0;
  @override
  Widget build(BuildContext context) {
    log('build Second page ====>${number++}');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Page Statefull',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'nomer:$nomer',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'san:$san',
                  style: const TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
              nomer++;
              san++;
            },
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Center(
              child: Text(
                'Go back to first Second Page',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Text(
            widget.number.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
