import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/widgets/type_selector.dart';
import 'empty.dart';
import '../ui/theme/color.dart';
import '../ui/theme/font.dart';
import '../models/contract.dart';
import '../bloc/ibilling_service_bloc.dart';
import 'contract_items.dart';

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
                      // print(state);
                      // if
                      // (snapshot.connectionState == ConnectionState.waiting) {
                      //   return const Center(
                      //     child: CircularProgressIndicator(
                      //       color: AppColor.whiteColor,
                      //     ),
                      //   );
                      // } else
                      if (snapshot.connectionState == ConnectionState.done) {
                        final data = snapshot.data as List<ContractItem>;
                        // print(snapshot.error);
                        // if (data.length == 0) {
                        //   return Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       SvgPicture.asset('assets/icons/noitem.svg'),
                        //       SizedBox(
                        //         height: mediaQuery.size.height * 0.05,
                        //       ),
                        //       Text(
                        //         'No contracts are made',
                        //         style: Theme.of(context).textTheme.bodyText1,
                        //       ),
                        //     ],
                        //   );
                        // }
                        // print(data.length);
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              const TypeSelector(),
                              ...data
                                  .map((element) => ContractContainer(
                                      lastInvoice: element.lastInvoice,
                                      contractStatus: element.contractStatus))
                                  .toList(),
                            ],
                          ),
                        );
                      }
                    } else {
                      return Expanded(
                        child: Text(
                          'There is an error!',
                          style: Theme.of(context).textTheme.headline5,
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
