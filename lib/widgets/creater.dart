import 'package:flutter/material.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';

class Creater extends StatefulWidget {
  const Creater({Key? key}) : super(key: key);

  @override
  _CreaterState createState() => _CreaterState();
}

class _CreaterState extends State<Creater> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Stack(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
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
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}
//     },
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'English (USA)',
//           style: AppTextTheme.darkTextTheme.bodyText1,
//         ),
//         Container(
//           width: 40.0,
//           height: 40.0,
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: AssetImage('assets/flags/usa.png'),
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// );
