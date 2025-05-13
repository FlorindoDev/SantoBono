import 'package:flutter/material.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },

      selectedIndex: currentPageIndex,
      destinations: <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Notifiche',
        ),
        NavigationDestination(
          icon: AppInfo.SvgIcon(
            Theme.of(context).colorScheme.onPrimary,
            25,
            25,
            'assets/images/Ortopedia.svg',
          ),
          label: 'Turni',
        ),
        NavigationDestination(
          icon: Badge(child: Icon(Icons.messenger_sharp)),
          label: 'Account',
        ),
      ],
    );
  }
}
