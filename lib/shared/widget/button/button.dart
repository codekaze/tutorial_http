import 'package:demo_app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class ExButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color color;

  ExButton({
    @required this.label,
    @required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Card(
        color: color ?? theme.mainColor,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Text(
            "$label",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
