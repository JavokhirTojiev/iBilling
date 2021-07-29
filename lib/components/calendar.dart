import 'package:flutter/material.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';
import 'day_container.dart';
import 'package:jiffy/jiffy.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    Key? key,
  }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  var pickedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: AppColor.darkerColor,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${Jiffy(pickedDate.toString()).format("MMMM, yyyy ")}',
                        style: AppTextTheme.darkTextTheme.headline2,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  pickedDate = pickedDate.subtract(
                                    const Duration(days: 7),
                                  );
                                });
                              },
                              icon: const Icon(Icons.arrow_back_ios)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  pickedDate = pickedDate.add(
                                    const Duration(days: 7),
                                  );
                                });
                              },
                              icon: const Icon(Icons.arrow_forward_ios)),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, index) {
                          return const SizedBox(
                            width: 6,
                          );
                        },
                        itemCount: 7,
                        itemBuilder: (_, index) {
                          return DayContainer(
                            day: Jiffy(pickedDate
                                    .add(Duration(days: index))
                                    .toString())
                                .format('E'),
                            date: Jiffy(pickedDate
                                    .add(Duration(days: index))
                                    .toString())
                                .format('dd'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
