import 'package:flutter/material.dart';
import '../ui.dart';
import '../../components/components.dart';

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
        backgroundColor: AppColor.darkestColor,
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
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              alignment: Alignment.topLeft,
              child:
                  Text('Status', style: AppTextTheme.darkTextTheme.bodyText2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomCheckBox(status: 'Paid'),
                    const CustomCheckBox(status: 'In Process'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomCheckBox(status: 'Rejected by IQ'),
                    const CustomCheckBox(status: 'Rejected by Payme'),
                  ],
                ),
              ],
            ),
            const CalendarFilter(),
            const Spacer(),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.darkGreenColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('Cancel',
                        style: AppTextTheme.darkTextTheme.headline3,
                    textAlign: TextAlign.center,),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.lightGreenColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('Apply Filters',
                      style: AppTextTheme.darkTextTheme.headline3,
                      textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
