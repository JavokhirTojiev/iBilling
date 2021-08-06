part of 'local_bloc.dart';

@immutable
abstract class LocalStatePart {}

class LocalInitial extends LocalStatePart {}

class LocalizingState extends LocalStatePart {}

class LocalizedState extends LocalStatePart {}

class FailedToLocalizeState extends LocalStatePart {}