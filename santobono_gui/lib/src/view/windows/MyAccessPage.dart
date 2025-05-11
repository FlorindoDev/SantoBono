import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:santobono_gui/src/view/widget/SmallAppBar.dart';
import 'package:santobono_gui/src/view/widget/AccessTopBar.dart';
import 'package:santobono_gui/src/view/widget/PreHomePage.dart';

class MyAccessPage extends StatefulWidget {
  const MyAccessPage({super.key});

  @override
  State<MyAccessPage> createState() => _MyAccessPageState();
}

class _MyAccessPageState extends State<MyAccessPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //TODO AGGIUSARE OVERFLOW PIXEL quanso la schermata è troppo piccola
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.50,
              child: const AccessTopBar(),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.50,
              child: Center(child: const PreHomePage()),
            ),
          ],
        ),
      ),
    );
  }
}
