import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/blocs.dart';
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
  DateTime pickedDate = DateTime.now().subtract(
    Duration(
      days: (DateTime.now().weekday - 1),
    ),
  );
  var _selectedIndex = -1;

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
                          _selectedIndex = -1;
                          pickedDate = pickedDate.subtract(
                            const Duration(days: 7),
                          );
                        });
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = -1;
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
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  final pickedIndexDay = pickedDate.add(Duration(days: index));
                  final pickedIndexDate = pickedDate.add(Duration(days: index));
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                        BlocProvider.of<ContractBlocPart>(context).setDate =
                            pickedIndexDay.toString();
                        BlocProvider.of<ContractBlocPart>(context).add(
                            FilterByDate(pickedIndexDay.toString()));
                      });
                    },
                    child: DayContainer(
                      isActive: _selectedIndex == index,
                      day: Jiffy(
                        pickedIndexDay,
                      ).format('E'),
                      date: Jiffy(
                        pickedIndexDate,
                      ).format('dd'),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
