import 'package:flutter/material.dart';
import '../ui/ui.dart';

class ContractText extends StatelessWidget {
  final String basic;
  final String secondary;

  const ContractText(
      {Key? key, required this.basic, required this.secondary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: RichText(
        text: TextSpan(text: basic, children: [
          const TextSpan(text: '   '),
          TextSpan(
            text: secondary,
            style: AppTextTheme
                .darkTextTheme.bodyText2!.copyWith(
                  color: AppColor.greyColor,
                ),
          ),
        ]),
      ),
    );
  }
}
