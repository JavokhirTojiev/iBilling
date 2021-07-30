import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui/theme/color.dart';

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
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.lighterGreen),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 3.0,
              bottom: 3.0,
              left: 10,
              right: 10.0,
            ),
            child: Text(
              contractStatus,
              style: const TextStyle(
                color: AppColor.lightGreenColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
