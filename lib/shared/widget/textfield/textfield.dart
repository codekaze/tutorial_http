import 'package:demo_app/core.dart';
import 'package:flutter/material.dart';

enum TextFieldType {
  normal,
  password,
}

Map<String, TextEditingController> textFieldController = {};

class ExTextField extends StatefulWidget {
  final String id;
  final String label;
  final String value;
  final String hintText;
  final TextFieldType textFieldType;

  final Function(String text) onChanged;
  final Function(String text) onSubmitted;

  ExTextField({
    @required this.id,
    @required this.label,
    this.value = "",
    this.hintText = "",
    this.textFieldType = TextFieldType.normal,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  _ExTextFieldState createState() => _ExTextFieldState();
}

class _ExTextFieldState extends State<ExTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.value;
    textFieldController[widget.id] = controller;
    Input.set(widget.id, widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          // color: Colors.white,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(widget.label),
          SizedBox(
            height: 4.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.grey[300],
              ),
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: TextField(
              controller: controller,
              obscureText:
                  widget.textFieldType == TextFieldType.password ? true : false,
              decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
              ),
              onChanged: (text) {
                Input.set(widget.id, text);
                if (widget.onChanged != null) return widget.onChanged(text);
              },
              onSubmitted: (text) {
                Input.set(widget.id, text);
                if (widget.onSubmitted != null) return widget.onSubmitted(text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
