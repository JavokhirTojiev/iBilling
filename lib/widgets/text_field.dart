import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ui/ui.dart';

class TextBlank extends StatelessWidget {
  final String label;
  final String? location;

  const TextBlank({
    Key? key,
    required this.label,
    this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text(
            label,
            style: AppTextTheme.darkTextTheme.bodyText2,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.075,
          child: TextField(
            cursorColor: AppColor.lighterGreen,
            decoration: InputDecoration(
                suffixIcon: location != null
                    ? Container(
                        margin: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          location!,
                          color: AppColor.greyColor,
                        ),
                      )
                    : Container(),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1.5, color: AppColor.greyColor),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1.5, color: AppColor.lightGreenColor),
                  borderRadius: BorderRadius.circular(10.0),
                )),
          ),
        ),
      ],
    );
  }
}
