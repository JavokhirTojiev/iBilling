import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../ui/ui.dart';
import '../blocs/contract_bloc/contact_bloc.dart';
import '../widgets/widgets.dart';
import '../components/components.dart';

class ContractsData extends StatelessWidget {
  const ContractsData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final mediaQuery = MediaQuery.of(context);
    return BlocBuilder<ContractBlocPart, ContractStatePart>(
      builder: (ctx, state) {
        if (state is LoadingContractState ||
            state is ContractInitialState ||
            state is FilteringByDate) {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(
                color: AppColor.lightGreenColor,
              ),
            ),
          );
        } else if (state is LoadedContractState || state is FilteredByDate) {
          if (state is FilteredByDate && state.filteredContracts.isEmpty) {
            return const Expanded(
              child: Empty(
                  title: 'No contracts are made',
                  location: 'assets/icons/noitem.svg'),
            );
          }
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TypeSelector(),
                    if (state is LoadedContractState)
                      ...state.contracts
                          .map(
                            (element) => Column(
                              children: [
                                ContractContainer(
                                  contractItem: element,
                                ),
                              ],
                            ),
                          )
                          .toList()
                    else if (state is FilteredByDate)
                      ...state.filteredContracts
                          .map(
                            (element) => Column(
                              children: [
                                ContractContainer(
                                  contractItem: element,
                                ),
                              ],
                            ),
                          )
                          .toList(),
                  ],
                ),
              ),
            ),
          );
        } else if (state is FailedToLoadState || state is FailedToFilter) {
          return Center(
            child: Text(
              state is FailedToLoadState
                  ? state.error
                  : state is FailedToFilter
                      ? state.error
                      : const Empty(
                          title: 'No contracts are made',
                          location: 'assets/icons/noitem.svg'),
            ),
          );
        }
        return Container();
      },
    );
  }
}
