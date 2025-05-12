import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:santobono_gui/src/view/widget/SmallAppBar.dart';
import 'package:santobono_gui/src/view/widget/AccessTopBar.dart';
import 'package:santobono_gui/src/view/widget/ContentPreHomePage.dart';

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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height:
                  MediaQuery.sizeOf(context).height < 850
                      ? MediaQuery.sizeOf(context).height * 0.47
                      : MediaQuery.sizeOf(context).height * 0.50,
              child: const AccessTopBar(),
            ),
            SizedBox(
              width:
                  MediaQuery.sizeOf(context).width < 600
                      ? double.infinity
                      : 500,
              height:
                  MediaQuery.sizeOf(context).height < 850
                      ? MediaQuery.sizeOf(context).height * 0.53
                      : MediaQuery.sizeOf(context).height * 0.50,
              child: Center(child: const ContentPreHomePage()),
            ),
          ],
        ),
      ),
    );
  }
}
//I/flutter (27698): Size(411.4, 820.6)