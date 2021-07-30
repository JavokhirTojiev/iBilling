import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui/ui.dart';

class CustomCheckBox extends StatefulWidget {
  final String status;

  const CustomCheckBox({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Row(
          children: [
            _isSelected
                ? SvgPicture.asset(
                    'assets/icons/inactive_check.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/active_check.svg',
                  ),
            const SizedBox(width: 10),
            _isSelected
                ? Text(widget.status,
                    style: AppTextTheme.darkTextTheme.bodyText2)
                : Text(widget.status,
                    style: AppTextTheme.darkTextTheme.headline3),
          ],
        ),
      ),
    );
  }
}
