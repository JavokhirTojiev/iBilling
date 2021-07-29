part of 'ibilling_service_bloc.dart';

@immutable
abstract class IbillingServiceState {}

class IbillingServiceLoading extends IbillingServiceState {}

class IbillingServiceLoaded extends IbillingServiceState {
  final loadedData;

  IbillingServiceLoaded(this.loadedData);
}

class IbillingServiceError extends IbillingServiceState {
  final error;

  IbillingServiceError({this.error});
}
