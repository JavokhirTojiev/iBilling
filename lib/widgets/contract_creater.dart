import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui/ui.dart';

class Creater extends StatefulWidget {
  const Creater({Key? key}) : super(key: key);

  @override
  _CreaterState createState() => _CreaterState();
}

class _CreaterState extends State<Creater> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColor.darkColor,
      content: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  children: [
                    Text('What do you want to create?',
                        style: AppTextTheme.darkTextTheme.headline2),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        color: AppColor.darkGrey,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/bigblank.svg'),
                            const SizedBox(width: 10),
                            Text('Contract',
                                style: AppTextTheme.darkTextTheme.headline3),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        color: AppColor.darkGrey,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/bookmark.svg'),
                            const SizedBox(width: 10),
                            Text('Invoice',
                                style: AppTextTheme.darkTextTheme.headline3),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
