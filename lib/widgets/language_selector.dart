import 'package:flutter/material.dart';
import '../ui/ui.dart';
import 'widgets.dart';

class Selector extends StatelessWidget {
  const Selector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColor.darkColor,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      child: MaterialButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: AppColor.darkColor,
                content: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Choose a language',
                            style: AppTextTheme.darkTextTheme.headline2),
                        const RadioOption(),
                        const Done(),
                      ],
                    ),
                    //),
                  ],
                ),
              );
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'English (USA)',
              style: AppTextTheme.darkTextTheme.bodyText1,
            ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/flags/usa.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
