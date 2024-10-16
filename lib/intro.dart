import 'package:classic/main.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  var a;
  IntroPage(this.a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(
                              title: 'Main Page',
                            )));
              },
              child: Text('Home Screen $a')),
        ),
      ),
    );
  }
}
