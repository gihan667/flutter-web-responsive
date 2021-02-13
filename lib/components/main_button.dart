
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key key,
    @required this.title,
    @required this.tapEvent,
    @required this.color,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextButton(
        onPressed: tapEvent,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 35, vertical: 15))
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}