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
          icon: AppInfo.SvgIcon(
            Theme.of(context).colorScheme.onPrimary,
            25,
            25,
            'assets/images/Home.svg',
          ),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: AppInfo.SvgIcon(
            Theme.of(context).colorScheme.onPrimary,
            25,
            25,
            'assets/images/calendario.svg',
          ),
          icon: AppInfo.SvgIcon(
            Theme.of(context).colorScheme.onPrimary,
            25,
            25,
            'assets/images/calendario.svg',
          ),
          label: 'Turni',
        ),
        NavigationDestination(
          icon: AppInfo.SvgIcon(
            Theme.of(context).colorScheme.onPrimary,
            25,
            25,
            'assets/images/campanella.svg',
          ),
          label: 'Notifiche',
        ),
      ],
    );
  }
}
