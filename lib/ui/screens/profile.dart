import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui.dart';
import '../../widgets/widgets.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';

  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar: const PreferredSize(
        child: TopBar2(
          title: 'Profile',
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColor.darkColor,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: 190,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 15),
                        child: SvgPicture.asset('assets/icons/avatar.svg'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Otabek Abdusamatov',
                            style: AppTextTheme.darkTextTheme.headline6,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Graphic designer • IQ Education',
                            style: AppTextTheme.darkTextTheme.bodyText1,
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Date of bith:',
                          style: AppTextTheme.darkTextTheme.bodyText1,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '16.09.2001',
                          style: AppTextTheme.darkTextTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Phone Number:',
                          style: AppTextTheme.darkTextTheme.bodyText1,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '+998 97 721 06 88',
                          style: AppTextTheme.darkTextTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          'E-mail:',
                          style: AppTextTheme.darkTextTheme.bodyText1,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'predatorhunter041@gmail.com',
                          style: AppTextTheme.darkTextTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Selector(),
          ],
        ),
      ),
      //bottomNavigationBar: NavigationBar(),
    );
  }
}
