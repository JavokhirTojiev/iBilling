part of 'contact_bloc.dart';

@immutable
abstract class ContractStatePart {}

class ContractInitialState extends ContractStatePart {}

class LoadingContractState extends ContractStatePart {}

class LoadedContractState extends ContractStatePart {
  final List<ContractItem> contracts;

  LoadedContractState({required this.contracts});
}

class FailedToLoadState extends ContractStatePart {
  final error;

  FailedToLoadState({required this.error});
}

class FilteringByDate extends ContractStatePart {}

class FilteredByDate extends ContractStatePart {
  final List<ContractItem> filteredContracts;

  FilteredByDate({required this.filteredContracts});
}

class FailedToFilter extends ContractStatePart {
  final error;

  FailedToFilter({required this.error});
}
