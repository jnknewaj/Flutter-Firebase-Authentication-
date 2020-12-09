import 'package:flutter/material.dart';

enum TextType {
  Error,
  Normal,
  Warning,
}

// A widget to display a highlighted text
class BilboardText extends StatelessWidget {
  final String text;
  final TextType textType;

  const BilboardText({Key key, @required this.text, @required this.textType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // todo make a screenutil
      height: 100.0,
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.pink,
          width: 3.0,
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: textType == TextType.Error ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
