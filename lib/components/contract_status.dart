import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/widgets.dart';

class ContractStatus extends StatelessWidget {
  final int lastInvoice;
  final String contractStatus;

  const ContractStatus({
    Key? key,
    required this.lastInvoice,
    required this.contractStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/icons/blank.svg'),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('№ $lastInvoice'),
            ),
          ],
        ),
        StatusIndicator(contractStatus: contractStatus),
      ],
    );
  }
}
