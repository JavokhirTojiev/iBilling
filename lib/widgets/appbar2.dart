import 'package:flutter/material.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';

class TopBar2 extends StatelessWidget {
  final String title;

  const TopBar2({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.darkestColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Image(
                image: AssetImage('assets/icons/logo.png'),
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: AppTextTheme.darkTextTheme.headline1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
