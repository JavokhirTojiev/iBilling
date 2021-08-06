import 'package:flutter/material.dart';
import '../ui/ui.dart';

class DayContainer extends StatelessWidget {
  final String day;
  final String date;
  final isActive;

  const DayContainer({
    Key? key,
    required this.day,
    required this.date, this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top:10,
        bottom: 10,
        left: 3.5,
        right: 3.5,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? AppColor.lightGreenColor : Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 45,
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
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 5,
                  top: 5,
                ),
                height: 1.5,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
