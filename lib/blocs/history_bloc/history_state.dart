part of 'history_bloc.dart';

@immutable
abstract class HistoryStatePart {}

class HistoryInitial extends HistoryStatePart {}

class LoadingHistoryState extends HistoryStatePart {}

class LoadedHistoryState extends HistoryStatePart {
  final List<ContractItem> contracts;

  LoadedHistoryState({required this.contracts});
}

class FailedToLoadHistoryState extends HistoryStatePart {
  final Object error;

  FailedToLoadHistoryState({required this.error});
}

class ExceptionState extends HistoryStatePart {}
