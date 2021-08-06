import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../ui/ui.dart';


class TypeSelector extends StatelessWidget {
  const TypeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
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
                'contract'.tr(),
                style: AppTextTheme.darkTextTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
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
                'invoice'.tr(),
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
