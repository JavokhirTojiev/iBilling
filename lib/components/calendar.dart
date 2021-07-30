import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import '../ui/ui.dart';
import '../components/components.dart';

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
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: AppColor.darkerColor,
      child: Column(
        children: [
          Row(
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
                            const Duration(days: 6),
                          );
                        });
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pickedDate = pickedDate.add(
                            const Duration(days: 6),
                          );
                        });
                      },
                      icon: const Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) => DayContainer(
                day: Jiffy(
                  pickedDate.add(Duration(days: index)).toString(),
                ).format('E'),
                date: Jiffy(
                  pickedDate.add(Duration(days: index)).toString(),
                ).format('dd'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
