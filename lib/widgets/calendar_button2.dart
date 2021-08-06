import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiffy/jiffy.dart';
import '../../blocs/blocs.dart';
import '../ui/ui.dart';

class CalendarButton2 extends StatelessWidget {
  final String number;
  final String title;

  const CalendarButton2({Key? key, required this.number, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocBuilder =
        BlocProvider.of<HistoryBlocPart>(context, listen: false);

    String picker(String time) {
      if (time == '2') {
        if (blocBuilder.getLastPeriod == '') {
          return 'To';
        }
        return Jiffy(blocBuilder.getLastPeriod).format('dd.MM.yyyy');
      } else {
        return '';
      }
    }

    return BlocBuilder<HistoryBlocPart, HistoryStatePart>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.3093,
          child: MaterialButton(
            color: AppColor.darkColor,
            onPressed: () async {
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(
                    DateTime.now().add(const Duration(days: 365)).year),
                builder: (context, child) {
                  return Theme(
                    data: ThemeData.dark().copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: AppColor.lightGreenColor,
                        // header background color
                        onPrimary: AppColor.whiteColor,
                        // header text color
                        onSurface: AppColor.whiteColor, // body text color
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          primary: AppColor.lightGreenColor,
                        ),
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              blocBuilder.setLastPeriod = pickedDate.toString();
              if (!(blocBuilder.getInitialPeriod == '' ||
                  blocBuilder.getLastPeriod == '')) {
                blocBuilder.add(LoadHistoryEvent(
                    blocBuilder.getInitialPeriod, blocBuilder.getLastPeriod));
              }
            },
            child: Row(
              children: [
                Text(
                  picker('2') == '' ? 'To' : '${picker('2')}',
                  style: AppTextTheme.darkTextTheme.bodyText2,
                ),
                const Spacer(),
                SvgPicture.asset('assets/icons/calendar.svg')
              ],
            ),
          ),
        );
      },
    );
  }
}
