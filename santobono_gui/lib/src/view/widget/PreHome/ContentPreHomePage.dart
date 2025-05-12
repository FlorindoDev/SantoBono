import 'package:flutter/material.dart';
import 'package:santobono_gui/main.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';
import 'package:santobono_gui/src/view/widget/PreHome/PreHomeButton.dart';
import 'package:santobono_gui/src/view/widget/PreHome/TextPreHome.dart';

class ContentPreHomePage extends StatelessWidget {
  const ContentPreHomePage({super.key});
  // L’altezza “preferita” per un AppBar standard

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
            TextPreHome(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
            Center(
              child: PreHomeButton(
                title: 'Accesso',
                buttonColor: Theme.of(context).colorScheme.primary,
                textStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                isOspite: false,
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            Center(
              child: PreHomeButton(
                title: 'Ospite',
                buttonColor: Theme.of(context).colorScheme.secondary,
                textStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                isOspite: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
