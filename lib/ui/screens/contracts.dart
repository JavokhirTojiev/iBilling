import 'package:flutter/material.dart';
import '../../components/contracts_data.dart';
import '../theme/color.dart';
import '../../components/calendar.dart';
import '../../widgets/appbar1.dart';

class Contracts extends StatelessWidget {
  static const routeName = '/contracts';

  const Contracts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: TopBar1(
          title: 'Contracts',
          iconLeft: 'assets/icons/filter.svg',
          iconRight: 'assets/icons/search.svg',
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      backgroundColor: AppColor.darkWorld,
      body: Column(
        children: [
          const Calendar(),
          const ContractsData(),
          // const Expanded(
          //   child: Empty(
          //       title: 'No contracts are made',
          //       location: 'assets/icons/noitem.svg'),
          // ),
        ],
      ),
      //bottomNavigationBar: NavigationBar(),
    );
  }
}
