import 'package:flutter/material.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';

class SmallAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SmallAppBar({super.key, required this.title});
  final String title;
  // L’altezza “preferita” per un AppBar standard
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    // AppBar già gestisce SafeArea internamente,
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: EdgeInsets.only(
              left: (constraints.maxWidth * 0.06),
              right: (constraints.maxWidth * 0.06),
            ),
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(title),
              actions: [
                IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
              ],
            ),
          );
        },
      ),
    );
  }
}
