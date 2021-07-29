import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../theme/font.dart';
import 'starter.dart';
import '../../components/checkbox.dart';

class Filter extends StatefulWidget {
  static const routeName = '/filter';

  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Starter.routeName);
            //Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Filters',
          style: AppTextTheme.darkTextTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Status',
              style: AppTextTheme.darkTextTheme.headline3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Checker(text: 'Paid'),
                const Checker(text: 'Paid'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Checker(text: 'Paid'),
                const Checker(text: 'Paid'),
              ],
            ),
          ],
        ),
      ),
      //bottomNavigationBar: const NavigationBar(),
    );
  }
}
