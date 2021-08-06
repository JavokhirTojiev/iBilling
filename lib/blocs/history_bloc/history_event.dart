part of 'history_bloc.dart';

@immutable
abstract class HistoryEventPart {}

class InitializeHistoryEvent extends HistoryEventPart {}

class LoadHistoryEvent extends HistoryEventPart {
  final String initial;
  final String last;

  LoadHistoryEvent(this.initial, this.last);
}
