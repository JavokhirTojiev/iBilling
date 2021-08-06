import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'local_event.dart';

part 'local_state.dart';

class LocalBlocPart extends Bloc<LocalEventPart, LocalStatePart> {
  LocalBlocPart() : super(LocalInitial());

  @override
  Stream<LocalStatePart> mapEventToState(
    LocalEventPart event,
  ) async* {}
}
