import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiffy/jiffy.dart';
import '../ui/ui.dart';

class CalendarFilter extends StatelessWidget {
  const CalendarFilter({Key? key}) : super(key: key);

  void _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(DateTime.now().add(const Duration(days: 1000)).year),
    );
  }

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 15.0),
          alignment: Alignment.topLeft,
          child: Text('Date', style: AppTextTheme.darkTextTheme.bodyText2),
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3093,
              child: MaterialButton(
                color: AppColor.darkColor,
                onPressed: () => _showDatePicker(context),
                child: Row(
                  children: [
                    Text(
                      '${Jiffy(date.toString()).format("dd.MM.yy")}',
                      style: AppTextTheme.darkTextTheme.bodyText2,
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/calendar.svg')
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.01,
              ),
              height: 1.5,
              color: AppColor.greyColor,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3093,
              child: MaterialButton(
                color: AppColor.darkColor,
                onPressed: () => _showDatePicker(context),
                child: Row(
                  children: [
                    Text('To', style: AppTextTheme.darkTextTheme.bodyText2),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/calendar.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
