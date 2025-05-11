import 'package:flutter/material.dart';
import 'package:santobono_gui/main.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';
import 'package:santobono_gui/src/view/widget/MyElevatedButton.dart';
import 'package:santobono_gui/src/view/widget/TextPreHome.dart';

class PreHomePage extends StatelessWidget {
  const PreHomePage({super.key});
  // L’altezza “preferita” per un AppBar standard

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          TextProHome(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
          Center(
            child: MyElevatedButton(
              title: 'Accesso',
              buttonColor: Theme.of(context).colorScheme.primary,
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          Center(
            child: MyElevatedButton(
              title: 'Ospite',
              buttonColor: Theme.of(context).colorScheme.secondary,
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
