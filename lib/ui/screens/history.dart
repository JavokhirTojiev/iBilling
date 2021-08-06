import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../components/history_contracts.dart';
import '../../blocs/blocs.dart';
import '../../widgets/widgets.dart';
import '../ui.dart';
import '../../components/components.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar:  PreferredSize(
        child: TopBar1(
          title: Constants.titles[1],
          iconLeft: 'assets/icons/filter.svg',
          iconRight: 'assets/icons/search.svg',
        ),
        preferredSize: const Size.fromHeight(kToolbarHeight),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  alignment: Alignment.topLeft,
                  child:
                      Text('Date', style: AppTextTheme.darkTextTheme.bodyText2),
                ),
                Row(
                  children: [
                    const CalendarButton1(number: '1', title: 'From'),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02),
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.01,
                      ),
                      height: 1.5,
                      color: AppColor.greyColor,
                    ),
                    const CalendarButton2(number: '2', title: 'To'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child:
                BlocProvider.of<HistoryBlocPart>(context).historyContracts == []
                    ? const Expanded(
                        child: Empty(
                        title: 'No history for this  period',
                        location: 'assets/icons/noitem.svg',
                      ))
                    : const HistoryContractsContainer(),
          )
        ],
      ),
      // }),
    );
  }
}
