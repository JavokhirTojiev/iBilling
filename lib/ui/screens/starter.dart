import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../widgets/widgets.dart';
import '../ui.dart';

class Starter extends StatefulWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) async {
    if (index == 2) {
      await showDialog(
        context: context,
        builder: (context) {
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
        child: Constants.pages[_selectedIndex],
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
            label: 'contract'.tr(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset(
                    'assets/icons/history1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/history.svg',
                  ),
            label: 'history'.tr(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset(
                    'assets/icons/new1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/new.svg',
                  ),
            label: 'news'.tr(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset(
                    'assets/icons/saved1.svg',
                  )
                : SvgPicture.asset(
                    'assets/icons/saved.svg',
                  ),
            label: 'saved'.tr(),
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? SvgPicture.asset(
                      'assets/icons/profile1.svg',
                    )
                  : SvgPicture.asset(
                      'assets/icons/profile.svg',
                    ),
              label: 'profile'.tr()),
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
