import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';

class Empty extends StatelessWidget {
  final String title;
  final String location;

  const Empty({Key? key, required this.title, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          location,
          color: AppColor.darkColor,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: AppTextTheme.darkTextTheme.headline5,
        )
      ],
    );
  }
}
