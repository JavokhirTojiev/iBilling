import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../../components/empty.dart';
import '../../widgets/appbar1.dart';

class History extends StatefulWidget {
  static const routeName = '/history';
  const History({Key? key}) : super(key: key);
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
  //final ValueNotifier<DateTime> _dateTimeNotifier =
      //ValueNotifier<DateTime>(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar:  const PreferredSize(
        child: TopBar1(
          title: 'History',
          iconLeft: 'assets/icons/filter.svg',
          iconRight: 'assets/icons/search.svg',
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: Column(
        children: <Widget>[
          // _buildContractBeginDate(context, _dateTimeNotifier),
          // _buildContractEndDate(context, _dateTimeNotifier),
          Container(),
          const Expanded(
            child:  Empty(
                title: 'No history for this period',
                location: 'assets/icons/noitem.svg'),
          ),

        ],
      ),
      //bottomNavigationBar: NavigationBar(),
    );
  }
}

// Widget _buildContractBeginDate(
//     BuildContext context, ValueNotifier<DateTime> _dateTimeNotifier) {
//   return RaisedButton(
//     child: const Text('Begin Date'),
//     onPressed: () => showDatePicker(
//       context: context,
//       firstDate: DateTime(1900),
//       initialDate: _dateTimeNotifier.value,
//       lastDate: DateTime(2022),
//     ).then((DateTime dateTime) => _dateTimeNotifier.value = dateTime),
//   );
// }
//
// Widget _buildContractEndDate(
//     BuildContext context, ValueNotifier<DateTime> _dateTimeNotifier) {
//   return RaisedButton(
//     child: Text('End Date'),
//     onPressed: () {
//       return showDatePicker(
//           context: context,
//           firstDate: _dateTimeNotifier.value,
//           initialDate: _dateTimeNotifier.value ?? DateTime.now(),
//           lastDate: DateTime(2022));
//     },
//   );
// }
