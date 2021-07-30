import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/contract.dart';
import '../ui/ui.dart';

class ContractContainer extends StatelessWidget {
  ContractItem contractItem;

  ContractContainer({
    Key? key,
    required this.contractItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      color: AppColor.darkerColor,
      child: Column(
        children: [
          ContractStatus(
            lastInvoice: contractItem.lastInvoice,
            contractStatus: contractItem.contractStatus,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContractText(
                  basic: 'Fish:',
                  secondary: contractItem.fullName,
                ),
                ContractText(
                  basic: 'Amount:',
                  secondary: '${contractItem.amount}',
                ),
                ContractText(
                  basic: 'Last invoice:',
                  secondary: '№ ${contractItem.lastInvoice}',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContractText(
                      basic: 'Number of invoice:',
                      secondary: '${contractItem.invoiceAmount}',
                    ),
                    ContractText(
                      basic: '',
                      secondary: '${contractItem.createdAt}',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
