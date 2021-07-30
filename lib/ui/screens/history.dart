import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../ui.dart';
import '../../components/components.dart';

class History extends StatelessWidget {
  static const routeName = '/history';

  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar: const PreferredSize(
        child: TopBar1(
          title: 'History',
          iconLeft: 'assets/icons/filter.svg',
          iconRight: 'assets/icons/search.svg',
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 10,
        ),
        child: Column(
          children: [
            const CalendarFilter(),
            const Expanded(
                child: Empty(
              title: 'No history for this  period',
              location: 'assets/icons/noitem.svg',
            )),
          ],
        ),
      ),
    );
  }
}
