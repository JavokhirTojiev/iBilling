import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/blocs.dart';
import '../../components/components.dart';
import '../../widgets/widgets.dart';
import '../ui.dart';

class Contracts extends StatelessWidget {
  const Contracts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: TopBar1(
          title: Constants.titles[0],
          iconLeft: 'assets/icons/filter.svg',
          iconRight: 'assets/icons/search.svg',
        ),
        preferredSize: const Size.fromHeight(kToolbarHeight),
      ),
      backgroundColor: AppColor.darkWorld,
      body: BlocProvider.value(
        value: BlocProvider.of<ContractBlocPart>(context),
        child: Column(
          children: [
            const Calendar(),
            const ContractsData(),
          ],
        ),
      ),
    );
  }
}
