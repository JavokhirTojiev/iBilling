import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../widgets/creater.dart';
import '../theme/color.dart';
import 'contracts.dart';
import 'history.dart';
import 'profile.dart';
import 'saved.dart';
import 'new.dart';

class Starter extends StatefulWidget {
  static const routeName = '/starter';

  const Starter({Key? key}) : super(key: key);

  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const Contracts(),
    const History(),
    const New(),
    const Saved(),
    const Profile(),
  ];

  void _onItemTapped(int index) async {
    if (index == 2) {
      await showDialog(
        context: context,
        builder: (ctx) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              //color: AppColor.darkColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Creater(),
          );
        },
      );
    }
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: AppColor.darkestColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset(
                    'assets/icons/contacts1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/contacts.svg',
                  ),
            label: 'Contracts',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset(
                    'assets/icons/history1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/history.svg',
                  ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset(
                    'assets/icons/new1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/new.svg',
                  ),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset(
                    'assets/icons/saved1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/saved.svg',
                  ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? SvgPicture.asset(
                    'assets/icons/profile1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/profile.svg',
                  ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        selectedFontSize: 13,
        unselectedFontSize: 12,
      ),
    );
  }
}
