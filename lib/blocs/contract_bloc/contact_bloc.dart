import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../api/mock_ibilling_api.dart';
import '../../models/contract.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';

part 'contact_state.dart';

class ContractBlocPart extends Bloc<ContractEventPart, ContractStatePart> {
  List<ContractItem> filtered = [];
  List<ContractItem> mockData = [];
  late String _date;

  Future<void> getMockData() async {
    mockData = await MockiBillingApi().getAllContracts();
  }

  void set setDate(String param) {
    _date = param;
  }

  String get getDate {
    return _date;
  }

  Future<void> fetchContractsByDate(DateTime time) async {
    filtered = [];
    await getMockData();
    mockData.forEach((contract) {
      try {
        final contractDate = DateTime.parse(contract.createdAt);

        if (time.day == contractDate.day &&
            time.month == contractDate.month &&
            time.year == contractDate.year) {
          filtered.add(contract);
        }
      } catch (error) {
        filtered = [];
      }
    });
  }

  ContractBlocPart() : super(ContractInitialState());

  @override
  Stream<ContractStatePart> mapEventToState(
    ContractEventPart event,
  ) async* {
    if (event is LoadContract) {
      yield LoadingContractState();
      await getMockData();
      try {
        yield LoadedContractState(contracts: mockData);
      } catch (error) {
        yield FailedToLoadState(error: error);
      }
    } else if (event is FilterByDate) {
      final filteringTime =
          DateTime.parse(FilterByDate(getDate).pickedDate);
      yield FilteringByDate();
      await fetchContractsByDate(filteringTime);

      try {
        yield FilteredByDate(filteredContracts: filtered);
      } catch (error) {
        yield FailedToFilter(error: error);
      }
    }
  }
}
