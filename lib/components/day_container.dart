import 'package:flutter/material.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';

class DayContainer extends StatelessWidget {
  final String day;
  final String date;

  const DayContainer({
    Key? key,
    required this.day,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.lightGreenColor,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 46,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            day,
            style: AppTextTheme.darkTextTheme.headline3,
          ),
          Column(
            children: [
              Text(
                date,
                style: AppTextTheme.darkTextTheme.headline3,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 1,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
