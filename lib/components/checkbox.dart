import 'package:flutter/material.dart';

class Checker extends StatefulWidget {
  final String text;

  const Checker({Key? key, required this.text}) : super(key: key);

  @override
  _CheckerState createState() => _CheckerState();
}

class _CheckerState extends State<Checker> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Checkbox(
            value: _checkbox,
            onChanged: (value) {
              setState(() {
                _checkbox = !_checkbox;
              });
            },
          ),
           const Text('text'),
        ],
      ),
    );
  }
}
