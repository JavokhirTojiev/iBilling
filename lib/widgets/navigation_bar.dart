import 'package:flutter/material.dart';
import '../ui/theme/color.dart';
import '../ui/screens/contracts.dart';
import '../ui/screens/history.dart';
import '../ui/screens/profile.dart';
import '../ui/screens/saved.dart';
import '../components/bar_button.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColor.darkestColor,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const BarButton(
              title: 'Contracts',
              location: 'assets/icons/contacts.svg',
              direction: Contracts.routeName,
            ),
            const BarButton(
              title: 'History',
              location: 'assets/icons/history.svg',
              direction: History.routeName,
            ),
            const BarButton(
              title: 'New',
              location: 'assets/icons/new.svg',
              direction: Contracts.routeName,
            ),
            const BarButton(
              title: 'Saved',
              location: 'assets/icons/saved.svg',
              direction: Saved.routeName,
            ),
            const BarButton(
              title: 'Profile',
              location: 'assets/icons/profile.svg',
              direction: Profile.routeName,
            ),
          ],
        ),
      ),
    );
  }
}
