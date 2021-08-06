import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../ui/ui.dart';
import '../blocs/history_bloc/history_bloc.dart';
import 'components.dart';

class HistoryContractsContainer extends StatelessWidget {
  const HistoryContractsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBlocPart, HistoryStatePart>(
      builder: (ctx, state) {
        if (state is LoadingHistoryState) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.lightGreenColor,
            ),
          );
        } else if (state is LoadedHistoryState) {
          if (state is LoadedHistoryState && state.contracts.isEmpty) {
            return const Expanded(
              child: Empty(
                  title: 'No contracts are made',
                  location: 'assets/icons/noitem.svg'),
            );
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  if (state is LoadedHistoryState)
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
                ],
              ),
            ),
          );
        } else if (state is FailedToLoadHistoryState) {
          return Center(
            child: Text(
              '${state.error}',
              textAlign: TextAlign.center,
            ),
          );
        }
        if (state is HistoryInitial) {
          return const Empty(
            title: 'No history for this  period',
            location: 'assets/icons/noitem.svg',
          );
        }
        return Container();
      },
    );
  }
}
