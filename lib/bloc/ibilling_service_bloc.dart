import 'dart:async';
import 'package:bloc/bloc.dart';
import '../models/contract.dart';
import '../api/mock_ibilling_api.dart';
import 'package:meta/meta.dart';

part 'ibilling_service_event.dart';

part 'ibilling_service_state.dart';

class IbillingServiceBloc
    extends Bloc<IbillingServiceEvent, IbillingServiceState> {
  IbillingServiceBloc() : super(IbillingServiceLoading());
  var contracts;

  Future<List<ContractItem>> getContract() async {
    contracts = await MockiBillingApi().getAllContracts();
    return contracts;
  }

  @override
  Stream<IbillingServiceState> mapEventToState(
    IbillingServiceEvent event,
  ) async* {
    if (event is Load) {
      yield IbillingServiceLoading();
      try {
        await getContract();
        yield IbillingServiceLoaded(getContract);
      } catch (error) {
        yield IbillingServiceError(error: error);
      }
    }
  }
}
