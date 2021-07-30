import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/widgets.dart';
import 'empty_icon.dart';
import '../ui/ui.dart';
import '../models/contract.dart';
import '../bloc/ibilling_service_bloc.dart';
import '../components/components.dart';

class ContractsData extends StatelessWidget {
  const ContractsData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return BlocBuilder<IbillingServiceBloc, IbillingServiceState>(
      builder: (context, state) {
        if (state is IbillingServiceLoading) {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(
                color: AppColor.whiteColor,
              ),
            ),
          );
        } else if (state is IbillingServiceLoaded) {
          return Expanded(
            child: BlocBuilder<IbillingServiceBloc, IbillingServiceState>(
              builder: (context, state) {
                return FutureBuilder(
                  future: IbillingServiceBloc().getContract(),
                  builder: (ctx, snapshot) {
                    if (snapshot.error == null) {
                      print(IbillingServiceBloc().getContract());
                      if (snapshot.connectionState == ConnectionState.done) {
                        final data = snapshot.data as List<ContractItem>;
                        return SingleChildScrollView(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const TypeSelector(),
                              ...data
                                  .map(
                                    (element) => ContractContainer(
                                      contractItem: element,
                                    ),
                                  )
                                  .toList(),
                            ],
                          ),
                        );
                      }
                    } else {
                      return Expanded(
                        child: Text(
                          'There is an error!',
                          style: AppTextTheme
                              .darkTextTheme.headline5,
                        ),
                      );
                    }
                    return Container();
                  },
                );
              },
            ),
          );
        }
        return const Expanded(
          child: Empty(
              title: 'No contracts are made',
              location: 'assets/icons/noitem.svg'),
        );
      },
    );
  }
}
