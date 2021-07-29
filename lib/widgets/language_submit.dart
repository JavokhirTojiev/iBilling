import 'package:flutter/material.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          MaterialButton(
            child: Container(
              width: 100,
              height: 40,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppColor.lightGreenColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Cancel',
                style: AppTextTheme.darkTextTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
          MaterialButton(
            child: Container(
              width: 100,
              height: 40,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppColor.lightGreenColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Done',
                style: AppTextTheme.darkTextTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }
}
