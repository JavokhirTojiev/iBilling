import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ui/ui.dart';

class DropDownStatus extends StatefulWidget {
  final String label;

  const DropDownStatus({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  _DropDownStatusState createState() => _DropDownStatusState();
}

class _DropDownStatusState extends State<DropDownStatus> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text(
            widget.label,
            style: AppTextTheme.darkTextTheme.bodyText2,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: AppColor.greyColor, width: 1.5),
          ),
          height: MediaQuery.of(context).size.height * 0.075,
          child: DropdownButtonFormField<String>(
            dropdownColor: AppColor.darkColor,
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
            ),
            isExpanded: true,
            icon: SvgPicture.asset(
              'assets/icons/down.svg',
              color: AppColor.greyColor,
            ),
            value: dropdownValue,
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: Constants.statusOptions
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: AppTextTheme.darkTextTheme.bodyText2,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
