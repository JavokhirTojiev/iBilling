import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui/ui.dart';

class BarButton extends StatelessWidget {
  final String location;
  final String title;
  final String direction;


  const BarButton({
    Key? key,
    required this.location,
    required this.title, required this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(location, color: AppColor.whiteColor),
            Text(
              title,
              style: AppTextTheme.darkTextTheme.headline4,
            ),
          ],
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(direction);
        },
      ),
    );
  }
}
