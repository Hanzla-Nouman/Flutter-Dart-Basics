import 'package:classic/main.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(tag:"background", child: Image.asset('assets/images/github.jpg'))
    );
  }
}
