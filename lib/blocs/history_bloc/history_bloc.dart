import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../api/mock_ibilling_api.dart';
import '../../models/contract.dart';
import 'package:meta/meta.dart';

part 'history_event.dart';

part 'history_state.dart';

class HistoryBlocPart extends Bloc<HistoryEventPart, HistoryStatePart> {
  HistoryBlocPart() : super(HistoryInitial());
  String initialPeriod = '';
  String lastPeriod = '';
  List<ContractItem> mockData = [];
  List<ContractItem> historyContracts = [];

  void set setInitialPeriod(String initialPeriod) {
    this.initialPeriod = initialPeriod;
  }

  void set setLastPeriod(String lastPeriod) {
    this.lastPeriod = lastPeriod;
  }

  String get getInitialPeriod {
    return initialPeriod;
  }

  String get getLastPeriod {
    return lastPeriod;
  }

  // Fetch All Json data from sample.json file
  Future<void> fetchMockData() async {
    mockData = await MockiBillingApi().getAllContracts();
  }

  // Apply logic to filter requested contracts out of mockData
  void filterHistoryContracts() {
    historyContracts = [];
    mockData.forEach((contract) {
      final contractCreated = DateTime.parse(contract.createdAt);
      if (contractCreated.isBefore(DateTime.parse(lastPeriod)) &&
          contractCreated.isAfter(DateTime.parse(initialPeriod))) {
        historyContracts.add(contract);
      }
    });
  }

  @override
  Stream<HistoryStatePart> mapEventToState(
    HistoryEventPart event,
  ) async* {
    if (event is InitializeHistoryEvent) {
      yield HistoryInitial();
    }
    if (event is LoadHistoryEvent) {
      if (!(initialPeriod == '' || lastPeriod == '')) {
        yield LoadingHistoryState();
        await fetchMockData();
        filterHistoryContracts();
        try {
          yield LoadedHistoryState(contracts: historyContracts);
        } catch (error) {
          yield FailedToLoadHistoryState(error: error);
        }
      } else {
        yield ExceptionState();
      }
    }
  }
}
