import 'package:flutter/material.dart';
import '../../components/components.dart';
import '../../widgets/widgets.dart';
import '../ui.dart';


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
        ],
      ),
      //bottomNavigationBar: NavigationBar(),
    );
  }
}
