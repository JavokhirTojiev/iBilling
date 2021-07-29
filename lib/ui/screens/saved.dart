import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../../components/empty.dart';
import '../../widgets/appbar1.dart';

class Saved extends StatelessWidget {
  static const routeName = '/saved';

  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar: const PreferredSize(
        child: TopBar1(
          title: 'Saved',
          iconLeft: 'assets/icons/filter.svg',
          iconRight: 'assets/icons/search.svg',
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: Column(
        children: <Widget>[
          Container(),
          const Expanded(

            child: Empty(
                title: 'No saved contracts',
                location: 'assets/icons/nosaved.svg'),
          ),
        ],
      ),
      //bottomNavigationBar: NavigationBar(),
    );
  }
}
