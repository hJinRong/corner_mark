library corner_mark;

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CornerMark extends StatelessWidget {
  final double width;
  final double height;
  final Color textColour;
  final Color backgroundColor;
  final String content;
  final double angle;

  CornerMark({
    Key key,
    this.width,
    this.height,
    this.backgroundColor = Colors.redAccent,
    this.textColour = Colors.white,
    this.content = 'Popular',
    this.angle = 1.75,
  })  : assert(textColour != null),
        assert(backgroundColor != null),
        assert(content != null),
        assert(angle != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Transform.rotate(
          angle: pi * angle,
          child: Container(
            alignment: Alignment.topCenter,
            width: width,
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 12.0,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                    ),
                    child: Text(
                      content,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 9.0,
                          fontWeight: FontWeight.bold,
                          color: textColour,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
