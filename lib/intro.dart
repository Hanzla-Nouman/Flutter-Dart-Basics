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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                                title: 'Main Page',
                              )));
                },
                child: Text('Home Screen $a')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'))
                            ], content: Text('This is alert dialog content'),
                            contentPadding: EdgeInsets.all(20) ,
                            title: Text('Flutter'),
                          ));
                },
                child: Text('Show Dialog'))
          ],
        )),
      ),
    );
  }
}
