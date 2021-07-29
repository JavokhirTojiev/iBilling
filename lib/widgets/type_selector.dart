import 'package:flutter/material.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';

class TypeSelector extends StatelessWidget {
  const TypeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: MaterialButton(
            onPressed: () {},
            child: Container(
              height: 30,
              width: 85,
              padding: const EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.lightGreenColor,
              ),
              child: Text(
                'Contract',
                style: AppTextTheme.darkTextTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: MaterialButton(
            onPressed: () {},
            child: Container(
              height: 30,
              width: 85,
              padding: const EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Invoice',
                style: AppTextTheme.darkTextTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
