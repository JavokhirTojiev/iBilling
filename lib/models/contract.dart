import 'package:json_annotation/json_annotation.dart';

part 'contract.g.dart';

@JsonSerializable()
class ContractResponse {
  List<ContractItem> contracts;

  ContractResponse({required this.contracts});

  factory ContractResponse.fromJson(Map<String, dynamic> json) =>
      _$ContractResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ContractResponseToJson(this);
}

@JsonSerializable()
class ContractItem {
  @JsonKey(name: 'full_name')
  String fullName;
  @JsonKey(name: 'contract_status')
  String contractStatus;
  String amount;
  @JsonKey(name: 'last_invoice')
  int lastInvoice;
  @JsonKey(name: 'invoice_amount')
  int invoiceAmount;
  String address;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'organization_itn')
  int organizationITN;

  ContractItem({
    required this.fullName,
    required this.contractStatus,
    required this.amount,
    required this.lastInvoice,
    required this.invoiceAmount,
    required this.address,
    required this.createdAt,
    required this.organizationITN,
  });

  factory ContractItem.fromJson(Map<String, dynamic> json) =>
      _$ContractItemFromJson(json);

  Map<String, dynamic> toJson() => _$ContractItemToJson(this);
}
