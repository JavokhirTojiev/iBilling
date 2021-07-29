import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui/theme/color.dart';

class ContractContainer extends StatelessWidget {
  final int lastInvoice;
  final String contractStatus;

  // ignore: use_key_in_widget_constructors
  const ContractContainer(
      {Key? key, required this.lastInvoice, required this.contractStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 148,
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      color: AppColor.darkerColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/icons/blank.svg'),
                Text('№ $lastInvoice'),
                const Spacer(),
                Chip(
                  label: Text(
                    contractStatus,
                    style: const TextStyle(
                      color: Color(0XFF49B7A5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
