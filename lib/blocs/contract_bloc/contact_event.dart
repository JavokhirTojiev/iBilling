part of 'contact_bloc.dart';

@immutable
abstract class ContractEventPart {}

class LoadContract extends ContractEventPart {}

class FilterByDate extends ContractEventPart {
  final String pickedDate;

  FilterByDate(this.pickedDate);
}
