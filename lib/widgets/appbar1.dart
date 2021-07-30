import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ui/ui.dart';


class TopBar1 extends StatelessWidget {
  final String title;
  final String iconLeft;
  final String iconRight;

  const TopBar1(
      {Key? key,
      required this.title,
      required this.iconLeft,
      required this.iconRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.darkestColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Image(
                image: AssetImage('assets/icons/logo.png'),
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: AppTextTheme.darkTextTheme.headline1,
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  iconLeft,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Filter.routeName);
                },
              ),
              SvgPicture.asset('assets/icons/line.svg'),
              IconButton(
                icon: SvgPicture.asset(
                  iconRight,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(SearchBar.routeName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
