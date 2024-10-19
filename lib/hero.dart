import 'package:classic/main.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
       
        
             Hero(
              transitionOnUserGestures: true,
              tag: "background",
              child: ClipRRect(
                child: Image.asset('assets/images/github.jpg'),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              ),
            ),
        Container(
          height: 300,
          child: ListWheelScrollView(
              itemExtent: 100,
              children: dummyData.map((v) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  width: 300,
                  child: Center(
                    child: Text(
                      v,
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                  ),
                );
              }).toList()),
        )
      ],
    ));
  }
}
