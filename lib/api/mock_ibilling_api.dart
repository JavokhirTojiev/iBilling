import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/contract.dart';

class MockiBillingApi {
  Future<List<ContractItem>> getAllContracts() async {
    return _getAllContracts();
  }

  Future<List<ContractItem>> _getAllContracts() async {
    await Future.delayed(const Duration(seconds: 2));
    final mockDataDecoded =
        json.decode(await getJsonAsString('assets/sample/ibilling.json'));

    final contractResponse = ContractResponse.fromJson(mockDataDecoded);

    return contractResponse.contracts;
  }

  Future<String> getJsonAsString(String filePath) async {
    return rootBundle.loadString(filePath);
  }
}
