import 'package:flutter/material.dart';

class SpecialButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textstyle;
  final VoidCallback? callback;
  SpecialButton(
      {this.bgColor,
      this.icon,
      required this.text,
      this.textstyle,
      this.callback});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callback,
        child: icon!=null
            ? Row(
                children: [
                  icon!,
                  Text(
                    text,
                    style: textstyle,
                  )
                ],
              )
            : Text(text, style: textstyle),style: ElevatedButton.styleFrom(shadowColor: bgColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(11),bottomRight: Radius.circular(11)))),);
  }
}
