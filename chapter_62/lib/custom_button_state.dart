import 'package:chapter_62/style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:division/division.dart';

class CustomButtonState extends StatefulWidget {
  final ParentStyle buttonStyle;

  CustomButtonState(this.buttonStyle);

  @override
  _CustomButtonStateState createState() => _CustomButtonStateState();
}

class _CustomButtonStateState extends State<CustomButtonState> {
  bool isTapDown = false;
  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt(
          'division',
          style: CustomStyles.txtStyle,
        ),
      ),
      style: widget.buttonStyle.clone()
        ..scale((isTapDown) ? 1.1 : 1)
        ..elevation((isTapDown) ? 0 : 5),
      gesture: Gestures()
        ..onTapDown((p0) {
          setState(() {
            isTapDown = true;
          });
        })
        ..onTapUp((p0) {
          setState(() {
            isTapDown = false;
          });
        })
        ..onTapCancel(() {
          setState(() {
            isTapDown = false;
          });
        }),
    );
  }
}
